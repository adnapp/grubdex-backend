class Restaurant < ApplicationRecord
  has_many :AddRestaurantToLists
  has_many :lists, through: :AddRestaurantToLists


  def self.create_restaurant_data(business)
    # byebug
    self.create(
      name: business['name'],
      cuisine: business['categories'].map{|item| item["title"]}.join(", "),
      address: business["location"]["display_address"].join(", "),
      image_url: business["image_url"],
      website_url:business['url'],
      lat: business['coordinates']['latitude'],
      lng: business['coordinates']['longitude']
    )
  end 

end