module ApplicationHelper


  def current_order
    if session[:order_id].present?
      begin
        Order.find(session[:order_id])
      rescue ActiveRecord::RecordNotFound
        Order.new
      end
    else
      Order.new
    end
  end


end
