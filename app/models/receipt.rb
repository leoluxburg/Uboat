class Receipt < ApplicationRecord
  belongs_to :order
  belongs_to :user
  has_many :receipt_items
  has_one :payment_confirmation
  validates :first_name, :last_name, :email, :phone, :shipping_country, :shipping_city, :shipping_address_line_1, presence: true


  def self.payment_confirmation
    PaymentConfirmation.new(receipt_id: @receipt.id, code: DateTime.now())
  end

end
