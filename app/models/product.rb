class Product < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :receipt_items
  has_many_attached :photos

end
