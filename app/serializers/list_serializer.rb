class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :AddRestaurantToLists
  has_many :restaurants, through: :AddRestaurantToList
end
