class Sector < ApplicationRecord
  belongs_to :state
  has_many :bays
end
