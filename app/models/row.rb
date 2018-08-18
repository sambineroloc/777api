class Row < ApplicationRecord
  validates :number, presence: true

  has_many :correspondences
end
