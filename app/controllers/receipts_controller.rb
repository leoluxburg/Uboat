class ReceiptsController < ApplicationController
  before_action :set_receipt, only: %i[ show edit update destroy ]

  # GET /receipts or /receipts.json
  def index
    @receipts = Receipt.all
  end

  # GET /receipts/1 or /receipts/1.json
  def show
  end

  # GET /receipts/new
  def new
    @receipt = Receipt.new
  end

  # GET /receipts/1/edit
  def edit
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
        current_order.order_items.each do |item|
          ReceiptItem.create!(product_id: item.product_id, quantity: item.quantity , receipt_id: @receipt.id,  start_date: item.start_date, end_date: item.end_date )
        end
        current_order.empty_card

        format.html { redirect_to receipt_url(@receipt), notice: "Receipt was successfully created." }
        format.json { render :show, status: :created, location: @receipt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipts/1 or /receipts/1.json
  def update
    respond_to do |format|
      if @receipt.update(receipt_params)
        format.html { redirect_to receipt_url(@receipt), notice: "Receipt was successfully updated." }
        format.json { render :show, status: :ok, location: @receipt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipts/1 or /receipts/1.json
  def destroy
    @receipt.destroy

    respond_to do |format|
      format.html { redirect_to receipts_url, notice: "Receipt was successfully destroyed." }
      format.json { head :no_content }
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
