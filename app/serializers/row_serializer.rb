# frozen_string_literal:true

# Serializes rows
class RowSerializer < ActiveModel::Serializer
  attributes :id, :number
  has_many :correspondences
end
