# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'yelp/fusion'


User.destroy_all
Restaurant.destroy_all
List.destroy_all
AddRestaurantToList.destroy_all



@apiKey = ENV['API_KEY']
# byebug
default_term = 'chinese'
default_location = 'nyc'
@url = "https://api.yelp.com/v3/businesses/search"


# this is preseeded data in our env
def self.search 
    params = {
        term: 'chinese',
        location: "NYC",
        limit: 10
    }
    response = HTTP.auth("Bearer #{@apiKey}").get(@url, params: params)
    response.parse 
end
# byebug
self.search["businesses"].each do |business|
    # byebug
    Restaurant.create_restaurant_data(business)
end



User.create(name:"Chelsey", home_city:"NYC", bio: "Foodie at Heart")
User.create(name:"Adam", home_city:"NYC", bio: "Ready to eat")

List.create(title:"NYC Italian list", description: "Pizza and pasta in nyc", user: User.first)
List.create(title:"Pasta list", description: "Good Pasta", user: User.second)


# Restaurant.create(name:"Romeo's Pizza", cuisine:"italian", address:"123 B ave", image_url: "Picture Here", website_url: "www.google.com")
# Restaurant.create(name:"Pasta Palace", cuisine:"italian", address:"123 Ocean ave", image_url: "Picture Here", website_url: "www.google.com")

r1 = Restaurant.first 
r2 = Restaurant.second
r3 = Restaurant.third
r4 = Restaurant.fourth

l1 = List.first
l2 = List.second

AddRestaurantToList.create(restaurant: r1, list: l1)
AddRestaurantToList.create(restaurant: r2, list: l2)
AddRestaurantToList.create(restaurant: r3, list: l1)
AddRestaurantToList.create(restaurant:r4, list: l1)

