# frozen_string_literal: true

# Cleans up the presentation of columns
class ColumnSerializer < ActiveModel::Serializer
  attributes :title
  has_many :correspondences
end
