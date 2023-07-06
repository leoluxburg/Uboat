class Receipt < ApplicationRecord
  belongs_to :order
  belongs_to :user
  has_many :receipt_items
  has_one :payment_confirmation

  def self.payment_confirmation
    PaymentConfirmation.new(receipt_id: @receipt.id, code: DateTime.now())
  end

end
