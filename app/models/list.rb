class List < ApplicationRecord
  belongs_to :user
  has_many :AddRestaurantToLists, dependent: :destroy
  has_many :restaurants, through: :AddRestaurantToLists

  validates_presence_of :title, :description
end
