# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

Restaurant.destroy_all

puts 'Creating restaurants...'

restaurants = [
  { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '020 7420 9320', category: "japanese" },
  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '020 3856 5430', category: 'italian' },
  { name: "Appestat", address: "102 Islington High St, The Angel, London N1 8EG", phone_number: '020 7226 5457', category: 'belgian' },
  { name: "Afghan Kitchen", address: "35 Islington Green, The Angel, London N1 8DU", phone_number: '020 7359 8019', category: 'belgian'},
  { name: 'Kipferl', address: '20 Camden Passage, The Angel, London N1 8ED', phone_number: '020 7704 1555', category: 'french'}
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
