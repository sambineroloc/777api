# frozen_string_literal: true

# Cleans up the presentation of correspondences
class CorrespondenceSerializer < ActiveModel::Serializer
  attributes :row_pointer, :column_pointer, :value
end
