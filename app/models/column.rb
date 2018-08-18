# frozen_string_literal: true

# Columns represent the different types of available data
class Column < ApplicationRecord
  validates :title, presence: true
  validates :roman_numeral, presence: true

  has_many :correspondences
end
