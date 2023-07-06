class Product < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :receipt_items
  has_many_attached :photos
  validates :categoria, presence: true
  validates :subcategoria, presence: true
  validates :titulo, presence: true
  validates :precio, presence: true
  validates :descripcion, presence: true
  validates :provincia, presence: true
  validates :distrito, presence: true
  validates :photos, presence: true, on: :create


  def self.search(search)
    if search
      where(["provincia LIKE ?","%#{search}%"])
    else
      all
    end
  end


end
