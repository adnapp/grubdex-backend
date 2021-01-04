# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Restaurant.destroy_all
List.destroy_all


User.create(name:"Chelsey", home_city:"NYC", bio: "Foodie at Heart")
User.create(name:"Adam", home_city:"NYC", bio: "Ready to eat")

nycItalyList = List.create(title:"NYC Italian list", description: "Pizza and pasta in nyc", user: User.first)
nycPastaList = List.create(title:"Pasta list", description: "Good Pasta", user: User.second)


romeo = Restaurant.create(name:"Romeo's Pizza", cuisine:"italian", address:"123 B ave", image_url: "Picture Here", website_url: "www.google.com")
pasta = Restaurant.create(name:"Pasta Palace", cuisine:"italian", address:"123 Ocean ave", image_url: "Picture Here", website_url: "www.google.com")


AddRestaurantToList.create(restaurant:romeo, list:nycItalyList)
AddRestaurantToList.create(restaurant:pasta, list:nycPastaList)
