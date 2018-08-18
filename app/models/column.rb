class Column < ApplicationRecord
  include JsonTranslator

  validates :title, presence: true
  validates :roman_numeral, presence: true

  has_many :correspondences
end
