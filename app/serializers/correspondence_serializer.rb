# frozen_string_literal: true

# Cleans up the presentation of correspondences
class CorrespondenceSerializer < ActiveModel::Serializer
  attributes :row_pointer, :column_pointer, :value
  belongs_to :column
  belongs_to :row
end
