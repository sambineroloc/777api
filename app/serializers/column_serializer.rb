class ColumnSerializer < ActiveModel::Serializer
  attributes :title
  has_many :correspondences
end
