class GearPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :images
  has_one :user
end
