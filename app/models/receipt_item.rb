class ReceiptItem < ApplicationRecord
  belongs_to :receipt
  belongs_to :product

  before_save :set_unit_price
  before_save :set_total

   def unit_price
    if persisted?
      self[:unit_price]
    else
      product.precio
    end
  end

  def set_quantity_from_dates
    self.quantity = (end_date - start_date).to_i + 1
  end

  def total
    unit_price*quantity
  end


  private

  def set_unit_price
    self[:unit_price] = unit_price
  end

  def set_total
    self[:total] = total * quantity
  end
end
