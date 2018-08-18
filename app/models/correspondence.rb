class Correspondence < ApplicationRecord
  validates :value, presence: true

  belongs_to :column
  belongs_to :row
end
