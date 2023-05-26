class Receipt < ApplicationRecord
  belongs_to :order
  belongs_to :user
  has_many :receipt_items
end
