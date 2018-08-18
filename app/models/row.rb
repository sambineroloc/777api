class Row < ApplicationRecord
  include JsonTranslator

  validates :number, presence: true

  has_many :correspondences
end
