# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

first_restau = Restaurant.create(name: 'PirateFood', address: 'Los Angeles', phone_number: '000000000000', category: 'italian')

Review.create(rating: 4, content: 'yummy', restaurant_id: first_restau.id)

sec_restau = Restaurant.create(name: 'Fishies', address: 'Japanstreet', phone_number: '000000000001', category: 'japanese')

Review.create(rating: 1, content: 'Very bad', restaurant_id: sec_restau.id)

third_restau = Restaurant.create(name: 'HomeMamaPizza', address: 'Romastreet', phone_number: '000000000002', category: 'italian')

Review.create(rating: 5, content: 'Amazing', restaurant_id: third_restau.id)

fourth_one = Restaurant.create(name: 'FritesAndCo', address: 'Brusselstreet', phone_number: '000000000003', category: 'belgian')

Review.create(rating: 0, content: 'Never again !', restaurant_id: fourth_one.id)

last_one = Restaurant.create(name: 'Pastadimama', address: 'Venisastreet', phone_number: '000000000004', category: 'italian')

Review.create(rating: 5, content: 'Just like it !! ', restaurant_id: last_one.id)
