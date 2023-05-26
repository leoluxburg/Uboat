class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :locations, :aboutus, :contact ]

  def home
    @order_items = current_order.order_items
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

  def your_clients
    if current_user.vendedor === true
      @receipts = Receipt.all
    else
      redirect_to root_path
    end
  end

  def your_products
    @user = current_user
  end
end
