class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :locations, :about_us, :contact, :panama ]

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

  def panama
    @products = Product.where(['provincia LIKE ?', "Panamá"])
  end

  def your_clients
    if current_user.vendedor === true
      @receipts = Receipt.all
    else
      redirect_to root_path
    end
  end

  def your_products
    if current_user.vendedor === true
      @user = current_user
    else
      redirect_to root_path
    end
  end



end
