class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.order_items.new(order_params)
    if @order_item.quantity == nil
      @order_item.set_quantity_from_dates
    end
    @order.save
    session[:order_id] = @order.id
    redirect_to baskets_path
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
