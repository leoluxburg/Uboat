class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
    skip_before_action :authenticate_user!, only: [ :index, :show ]

  # GET /products or /products.json
  def index
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
     @order_item = current_order.order_items.new
    @order_items = current_order.order_items
  end

  # GET /products/new
  def new
    @product = Product.new
    @categories = Category.all.pluck(:title)
    @provinces = Province.all.pluck(:title)
  end

  # GET /products/1/edit
  def edit
    if current_user == @product.user
      @categories = Category.all.pluck(:title)
      @provinces = Province.all.pluck(:title)
    else
      redirect_to root_path
    end
  end

  # POST /products or /products.json
  def create
    if current_user == @product.user
      @product = Product.new(product_params)
      @product.user = current_user
      respond_to do |format|
        if @product.save
          format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
          format.json { render :show, status: :created, location: @product }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    if current_user == @product.user
      respond_to do |format|
        if @product.update(product_params)
          format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
          format.json { render :show, status: :ok, location: @product }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    if current_user == @product.user
      @product.destroy

      respond_to do |format|
        format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
        format.json { head :no_content }
      end
    else
      redirect_to root_path
    end
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
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:titulo, :categoria, :subcategoria, :provincia, :distrito, :corregimiento, :sector, :marina, :precio, :descripcion, :user_id, photos: [])
    end
end
