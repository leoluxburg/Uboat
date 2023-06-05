class SearchesController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :show, :new, :create ]
   def show
        @search = Search.new
        @data = Search.find(params[:id])
    end

    def new
      @search = Search.new
      @order_items = current_order.order_items
      @products = Product.all[0..3]
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end

    private

    def search_params
        params.require(:search).permit(:category, :province)
    end
end
