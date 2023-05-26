class State < ApplicationRecord
  belongs_to :district
  has_many :sectors
end
