# frozen_string_literal: true

# Rows represent the numbers significant to the columns
class Row < ApplicationRecord
  validates :number, presence: true

  has_many :correspondences
end
