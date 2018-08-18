class Column < ApplicationRecord
  validates :title, presence: true
  validates :roman_numeral, presence: true
  has_many :correspondences
end
