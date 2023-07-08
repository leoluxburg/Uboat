class SearchesController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :show, :new, :create ]
   def show
        @categories = Category.all.pluck(:title)
        @provinces = Province.all.pluck(:title)
        @search = Search.new
        @data = Search.find(params[:id])
    end

    def new
      receipts = Receipt.all
      #receipts.each do |receipt|
        #puts receipt
        #puts receipt.status
        #if receipt.status === 'En proceso'
          #receipt.receipt_items.each do |item|
            #item.destroy
          #end
          #receipt.destroy
        #end
      #end
      @categories = Category.all.pluck(:title)
      @provinces = Province.all.pluck(:title)
      @search = Search.new
      @products = Product.all
      @valid_products = @products.where(activacion: 'Activo', estatus: 'Valido')
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end

    def subcategories
      @target = params[:target]
      @subcategories = Subcategory.joins(:category).where("categories.title LIKE ?", "%#{params[:category]}%").pluck(:name)
      respond_to do |format|
        format.turbo_stream
      end
    end

    def districts
      @target = params[:target]
      @districts = District.joins(:province).where("provinces.title LIKE ?", "%#{params[:province]}%").pluck(:name)
      respond_to do |format|
        format.turbo_stream
      end
    end

    private

    def search_params
        params.require(:search).permit(:category, :province, :subcategory, :district, :budget, :bay, :sector)
    end
end
