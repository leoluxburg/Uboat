class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  skip_before_action :authenticate_user!, only: [ :subcategories, :districts ]
  # GET /products or /products.json
  def index
    @products = Product.search(params[:search])
    @search = Search.new
    @categories = Category.all.pluck(:title)
    @provinces = Province.all.pluck(:title)
  end

  # GET /products/1 or /products/1.json
  def show
     if @product.activacion === 'Activo' and @product.estatus === 'Valido'
      @order_item = current_order.order_items.new
      @order_items = current_order.order_items
    elsif current_user == @product.user
      @order_item = current_order.order_items.new
       @order_items = current_order.order_items
    elsif current_user and current_user.admin
       @order_item = current_order.order_items.new
       @order_items = current_order.order_items
    else
      redirect_to root_path
    end
  end

  # GET /products/new
  def new
   if current_user.profile
    @product = Product.new
    @categories = Category.all.pluck(:title)
    @provinces = Province.all.pluck(:title)
  else
    redirect_to '/profiles/new'
    end
  end

  # GET /products/1/edit
  def edit
    if current_user == @product.user or current_user.admin
      @categories = Category.all.pluck(:title)
      @provinces = Province.all.pluck(:title)

    else
      redirect_to root_path
    end
  end

  # POST /products or /products.json
  def create
    if current_user
      @product = Product.new(product_params)
      @product.user = current_user
      @product.estatus = 'Nuevo'
      respond_to do |format|
        if @product.save
          ProductMailer.with(product: @product).new_product_email.deliver_later
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
  puts product_params[:photos]
  if product_params[:photos].blank? or product_params[:photos] === [""]
    puts 'blank---------------------------'
    if current_user == @product.user || current_user.admin
    respond_to do |format|
      if product_params[:photos].nil? || product_params[:photos].empty?
        # Remove the line that updates the attributes directly
        if @product.update(product_params.except(:photos, :photos_destroy))
          format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
          format.json { render :show, status: :ok, location: @product }
        else
          format.html { render :edit }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      else
        # Only remove the photos if the `photos_destroy` parameter is present and set to "1"
        should_remove_photos = product_params[:photos_destroy] == "1"
        if should_remove_photos
          @product.photos.purge
        end

        @product.assign_attributes(product_params.except(:photos, :photos_destroy))

        # Attach the new photos
        @product.photos.attach(product_params[:photos])

        if @product.save
          format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
          format.json { render :show, status: :ok, location: @product }
        else
          format.html { render :edit }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    end
  else
    redirect_to root_path
  end
  else
    puts 'data---------------------------'
    if current_user == @product.user || current_user.admin
      respond_to do |format|
        if product_params[:photos].nil?
          # Remove the line that updates the attributes directly
          if @product.update(product_params.except(:photos, :photos_destroy))
            format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
            format.json { render :show, status: :ok, location: @product }
          else
            format.html { render :edit }
            format.json { render json: @product.errors, status: :unprocessable_entity }
          end
        else
          # Remove the existing photos before attaching new ones only if new photos are present
          if product_params[:photos].present?
            @product.photos.purge
          end

          @product.assign_attributes(product_params.except(:photos, :photos_destroy))

          # Attach the new photos
          @product.photos.attach(product_params[:photos])

          # Save the product to trigger validations
          if @product.save
            format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
            format.json { render :show, status: :ok, location: @product }
          else
            format.html { render :edit }
            format.json { render json: @product.errors, status: :unprocessable_entity }
          end
        end
      end
    else
      redirect_to root_path
    end
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
    # @target = params[:target]
    subcategories = Subcategory.joins(:category).where("categories.title LIKE ?", "%#{params[:id]}%").pluck(:name)
    render json: { value:  subcategories}, status: 200
  end

  def districts
    districts = District.joins(:province).where("provinces.title LIKE ?", "%#{params[:id]}%").pluck(:name)
    render json: { value:  districts}, status: 200
  end

  def states
    states = State.joins(:district).where("districts.name LIKE ?", "%#{params[:id]}%").pluck(:name)
    render json: { value:  states}, status: 200
  end

  def sectors
    sectors = Sector.joins(:state).where("states.name LIKE ?", "%#{params[:id]}%").pluck(:name)
    render json: { value:  sectors}, status: 200
  end

  def marinas
    bays = Bay.joins(:sector).where("sectors.name LIKE ?", "%#{params[:id]}%").pluck(:name)
    render json: { value:  bays}, status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:titulo, :categoria, :subcategoria, :provincia, :distrito, :corregimiento, :sector, :marina, :precio, :descripcion, :user_id,:activacion, :estatus, :direccion, photos: [])
    end
end
