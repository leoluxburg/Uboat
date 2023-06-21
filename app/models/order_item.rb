class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  before_save :set_unit_price
  before_save :set_total

  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_must_be_after_start_date
  validate :start_date_cannot_be_in_the_past
  validate :no_overlap_with_existing_records

  def no_overlap_with_existing_records
    overlapping_records = ReceiptItem.where.not(id: id)
                                  .where("(start_date, end_date) OVERLAPS (?, ?)", start_date, end_date)

    if overlapping_records.exists?
      errors.add(:base, "Dates overlap with existing records")
    end
  end

  def end_date_must_be_after_start_date
    if start_date && end_date && end_date <= start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

  def start_date_cannot_be_in_the_past
    if start_date && start_date < Date.current
      errors.add(:start_date, "can't be in the past")
    end
  end

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
