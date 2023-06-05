class OrderItemsController < ApplicationController
  def create
    if current_order.order_items.size >= 1
      current_order.order_items.clear
    end
    @order = current_order
    @order_item = @order.order_items.new(order_params)
    if @order_item.quantity == nil
      @order_item.set_quantity_from_dates
    end
    @order_item.save
    if @order_item.save
      @order.save
      session[:order_id] = @order.id
      redirect_to baskets_path
    else
      flash[:notice] = "Error en las fechas seleccionadas"
      redirect_to product_url(@order_item.product)
    end
  end

  def update
    print('here')
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_params)
    @order_items = current_order.order_items
  end

  def destroy
    print('here')
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy!
    @order_items = current_order.order_items
    redirect_to baskets_path
  end

  private

  def order_params
    params.require(:order_item).permit(:product_id, :quantity, :start_date, :end_date)
  end
end
