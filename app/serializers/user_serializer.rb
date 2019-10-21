class UserSerializer < ActiveModel::Serializer
  attributes :name 
  has_many :gear_posts 
end