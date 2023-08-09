# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 555-5555, category: "chinese"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 555-5555, category: "italian"}
sushi_king = {
  name: "Sushi King",
  address: "123 Sushi Lane, Tokyo",
  phone_number: "555-5555",
  category: "japanese"
}

le_croissant = {
  name: "Le Croissant",
  address: "789 Croissant Blvd, Paris",
  phone_number: "555-5555",
  category: "french"
}

waffle_world = {
  name: "Waffle World",
  address: "456 Waffle Ave, Brussels",
  phone_number: "555-5555",
  category: "belgian"
}

[dishoom, pizza_east, sushi_king, le_croissant, waffle_world].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
