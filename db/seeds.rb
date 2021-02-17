# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
burger_lads = { name: "Burger Lads", address: "7 Boundary St, London E2 7JE", phone_number: "01202 528558", category: "chinese" }
eight_dames =  { name: "Eight dames", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "3257 893358", category: "italian" }
blue_fort =  { name: "Blue Fort", address: "24 Chaos Rd, London E12 6D8", phone_number: "98001 9283435",category: "french" }
sixty_million =  { name: "Sixty Million Postcards", address: "Somewhere in Bournemouth", phone_number: "5463781 812912",category: "japanese" }
matsuya =  { name: "Matsuya", address: "bloody everywhere", phone_number: "772867 5309",category: "belgian" }
[ burger_lads, eight_dames, blue_fort, sixty_million, matsuya ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"