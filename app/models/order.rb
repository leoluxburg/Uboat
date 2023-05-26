class Order < ApplicationRecord
   has_many :order_items


  def subtotal
    order_items.collect{|order_item| order_item.valid? ? order_item.unit_price*order_item.quantity : 0}.sum
  end

  def empty_card
    self.order_items = []
  end

  private

  def set_subtotal
    self[:subtotal] = subtotal
  end
end
