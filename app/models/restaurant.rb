class Restaurant < ApplicationRecord
  has_many :AddRestaurantToLists
  has_many :lists, through: :AddRestaurantToLists
end
