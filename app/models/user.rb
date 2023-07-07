class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_many :products
  validates :password_confirmation, :presence => true

  validate :passwords_match

  def passwords_match
    if password != password_confirmation
      errors.add(:password_confirmation, "must match password")
    end
  end
end
