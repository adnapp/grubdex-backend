class AddRestaurantToList < ApplicationRecord
  belongs_to :list
  belongs_to :restaurant
end
