# frozen_string_literal: true

# Correspondences are the values contained at the vertice of a column and row
class Correspondence < ApplicationRecord
  validates :value, presence: true
  validates_uniqueness_of :row_id, scope: :column_id

  belongs_to :column
  belongs_to :row
end
