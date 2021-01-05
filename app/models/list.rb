class List < ApplicationRecord
  belongs_to :user
  has_many :AddRestaurantToLists, dependent: :destroy
  has_many :restaurants, through: :AddRestaurantToLists
end
