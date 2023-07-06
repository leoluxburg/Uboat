class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :nombre_completo, presence: true
  validates :telefono, presence: true
  validates :fecha_de_nacimiento, presence: true
  validates :nacionalidad, presence: true
end
