class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :locations, :about_us, :contact, :panama, :bocas_del_toro, :cocle, :colon, :chiriqui, :darien, :herrera, :los_santos, :veraguas, :panama_oeste, :embera, :guna_yala]


  def home
    @order_items = current_order.order_items
    @products = Product.all[0..3]
  end

  def dashboard
    @user = current_user
  end

  def locations

  end

  def about_us
  end

  def contact
  end

  def bocas_del_toro
    @products = Product.where(['provincia LIKE ?', "Bocas del Toro"])
  end

  def cocle
    @products = Product.where(['provincia LIKE ?', "Coclé"])
  end

  def colon
    @products = Product.where(['provincia LIKE ?', "Colón"])
  end

  def chiriqui
    @products = Product.where(['provincia LIKE ?', "Chiriquí"])
  end

  def darien
    @products = Product.where(['provincia LIKE ?', "Darién"])
  end

  def herrera
    @products = Product.where(['provincia LIKE ?', "Herrera"])
  end

  def los_santos
    @products = Product.where(['provincia LIKE ?', "Los Santos"])
  end

  def panama
    @products = Product.where(['provincia LIKE ?', "Panamá"])
  end

  def veraguas
    @products = Product.where(['provincia LIKE ?', "Veraguas"])
  end

  def panama_oeste
    @products = Product.where(['provincia LIKE ?', "Panamá Oeste"])
  end

  def embera
    @products = Product.where(['provincia LIKE ?', "Embera-Wounaan"])
  end

  def guna_yala
    @products = Product.where(['provincia LIKE ?', "Guna Yala"])
  end

  def your_clients
    if current_user
      @receipts = Receipt.all
    else
      redirect_to root_path
    end
  end

  def your_products
    if current_user
      @user = current_user
      @products = Product.all
    else
      redirect_to root_path
    end
  end

  def paguelofacil_test
    data = {
      "CCLW" => '241484758C8CB86C552834D901E37436280E767CB3974685A4905F3062CB7AAEDE40F9C17FBA47BBE3B8A052E1ED96FD09E1118C8F490DFB42E0233ACBAFBD26',
      "CMTN" => 420.0,
      "CDSC" => 'UBoat',
      "RETURN_URL" => 'https://uboat.herokuapp.com/',
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
      puts data['data']['url']
      redirect_to data['data']['url'], allow_other_host: true
  end

  def card_error
  end

end
