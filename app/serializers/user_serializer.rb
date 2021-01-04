class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :home_city, :bio
  has_many :lists
end
