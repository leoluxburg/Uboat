require 'net/http'
require 'json'
class ReceiptsController < ApplicationController
  before_action :set_receipt, only: %i[ show edit update destroy ]
  layout false, only: [:payment_method]

  # GET /receipts or /receipts.json
  def index
    @receipts = Receipt.all
  end

  # GET /receipts/1 or /receipts/1.json
  def show
    url = 'https://uboat.herokuapp.com'
      redirect = check_out_path(receipt_id: @receipt.id)
      redirect_url = url + redirect
      puts redirect_url.to_s
  end

  # GET /receipts/new
  def new
    if current_user.profile
      @receipt = Receipt.new
    else
      redirect_to '/profiles/new'
    end
  end

  # GET /receipts/1/edit
  def edit
    if current_user.admin
      puts 'Edit Receipt'
    else
      redirect_to '/500.html'
    end
  end

  # POST /receipts or /receipts.json
  def create
    @order = current_order
    @receipt = Receipt.new(receipt_params)
    @receipt.user = current_user
    @receipt.order = current_order
    puts @receipt.order.order_items.first.product.titulo
    @receipt.status = 'En proceso'
    puts @order.subtotal
    @receipt.price = @order.subtotal
    respond_to do |format|
      if @receipt.save
         #ReceiptMailer.with(receipt: @receipt).new_receipt_email.deliver_later
        current_order.order_items.each do |item|
          ReceiptItem.create!(product_id: item.product_id, quantity: item.quantity , receipt_id: @receipt.id,  start_date: item.start_date, end_date: item.end_date )
        end
        current_order.empty_card
        format.html { redirect_to payment_method_path(receipt_id: @receipt.id), status: :see_other}
        format.json { render :show, status: :created, location: @receipt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipts/1 or /receipts/1.json
  def update
    if current_user.admin
      respond_to do |format|
        if @receipt.update(receipt_params)
          if @receipt.status === ""
            @receipt.status = 'En progreso'
            @receipt.save
          end
          format.html { redirect_to receipt_url(receipt_id: @receipt.id), notice: "Receipt was successfully updated." }
          format.json { render :show, status: :ok, location: @receipt }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @receipt.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path
    end
  end

  # DELETE /receipts/1 or /receipts/1.json
  def destroy
    if current_user.admin
    @receipt.receipt_items.each do |item|
      item.destroy
    end
    @receipt.destroy

    respond_to do |format|
      format.html { redirect_to receipts_url, notice: "Receipt was successfully destroyed." }
      format.json { head :no_content }
    end
    end
  end

  def payment_method
      receipt_id = params[:receipt_id]
      # Retrieve the receipt based on the ID
      @receipt = Receipt.find(receipt_id)

      puts @receipt.id
      puts @receipt.price


      url = 'https://uboat.herokuapp.com'
      redirect = check_out_path(receipt_id: @receipt.id)
      redirect_url = url + redirect
      puts redirect_url

      data = {
      "CCLW" => '241484758C8CB86C552834D901E37436280E767CB3974685A4905F3062CB7AAEDE40F9C17FBA47BBE3B8A052E1ED96FD09E1118C8F490DFB42E0233ACBAFBD26',
      "CMTN" => @receipt.price,
      "CDSC" => 'UBoat',
      "RETURN_URL" => "#{redirect_url}",
      "PF_CF" => '5B7B226964223A227472616D6974654964222C226E616D654F724C6162656C223A2249642064656C205472616D697465222C2276616C7565223A2254494432333435227D5D',
      "PARM_1" => '19816201',
      "EXPIRES_IN" => 3600
      }

      postR = data.map { |key, value| "#{key}=#{value}" }.join('&')

      uri = URI('https://sandbox.paguelofacil.com/LinkDeamon.cfm')
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Post.new(uri.path)
      request.set_form_data(data)
      response = http.request(request)
      result = response.body
      puts 'API Response: '
      puts result
      puts 'API Code Response: '
      data = JSON.parse(result)
      code = data['headerStatus']['code']
      puts code

      if code != 200
        redirect_to '/500.html'
      end

      puts data['data']['url']
      @redirect_url = "#{data['data']['url']}"

    end

    def payment_confirmation
      # Get the receipt data sent to the API
      receipt_id = params[:receipt_id]
      # Retrieve the receipt based on the ID
        @receipt = Receipt.find(receipt_id) # replace with the actual parameter name
        total_pagado = params[:TotalPagado].to_f
        fecha = Date.strptime(params[:Fecha], '%d/%m/%Y')
        hora = Time.parse(params[:Hora])
        tipo = params[:Tipo]
        oper = params[:Oper]
        usuario = params[:Usuario]
        email = params[:Email]
        estado = params[:Estado]
        razon = params[:Razon]
        cmtn = params[:CMTN].to_f
        cdsc = params[:CDSC]
        cclw = params[:CCLW]
      if @receipt.payment_confirmation
        puts 'receipt already paid'
        redirect_to '/500.html'
      else
        # Create a new PaymentConfirmation record
        if total_pagado > 0 && estado != 'Denegada'
          payment_confirmation = PaymentConfirmation.new(
            receipt: @receipt, # replace with the actual receipt object
            code: 'code-00000' # replace with the appropriate key to access the code in receipt_data
          )
          respond_to do |format|
          if payment_confirmation.save
            @receipt.status = 'Pago'
            @receipt.save
            ReceiptMailer.with(receipt: @receipt).new_receipt_email.deliver_later
            format.html { redirect_to payment_method_path(receipt_id: @receipt.id), status: :see_other}
            format.json { render json: { success: true, message: 'Payment confirmation created successfully' } }
          else
             format.json { render json: { success: false, message: 'Failed to create payment confirmation' }}
          end
          end
        else
          @receipt.receipt_items.each do |item|
            item.destroy
          end
          @receipt.destroy
          puts 'Error on payment'
          redirect_to '/card_error'
      end
    end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipt
      @receipt = Receipt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def receipt_params
      params.require(:receipt).permit(:first_name, :last_name, :email, :phone, :shipping_address_line_1, :shipping_address_line_2, :shipping_city, :shipping_state, :shipping_postal_code, :shipping_country, :credit_card_number, :cardholder_name, :expiration_month, :expiration_year, :cvv_code, :product_name, :quantity, :price, :subtotal, :shipping_method, :taxes, :total, :gift_message, :coupon_code, :order_notes, :status, :order_id, :user_id, :order_item_id)
    end

end
