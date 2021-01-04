class List < ApplicationRecord
  belongs_to :user
  has_many :AddRestaurantToLists
  has_many :restaurants, through: :AddRestaurantToLists
end
