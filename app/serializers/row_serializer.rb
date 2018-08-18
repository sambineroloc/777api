# frozen_string_literal:true

# Serializes rows
class RowSerializer < ActiveModel::Serializer
  attributes :number
  has_many :correspondences
end
