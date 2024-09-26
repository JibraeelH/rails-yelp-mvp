# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all
puts "Restaurants created!"
# Restaurant objects - in array/hash
puts "Creating restaurants..."
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St London E1 6PQ", phone_number: "3893893899", category: "italian" }
epicure = { name: "Epicure", address: "123 Rue Epicure", phone_number: "123456789", category: "french" }
sushi_zen = { name: "Sushi Zen", address: "12 Cherry Lane", phone_number: "987654321", category: "japanese" }
la_piazza = { name: "La Piazza", address: "5 Square", phone_number: "2468101214", category: "italian" }
dragon_house = { name: "Dragon House", address: "33 Dragon Road", phone_number: "135791113", category: "chinese" }
le_waffle = { name: "Le Waffle", address: "7 Waffle St", phone_number: "1213141516", category: "belgian" }
[ pizza_east, epicure, sushi_zen, la_piazza, dragon_house, le_waffle ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
