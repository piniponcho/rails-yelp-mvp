# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Destroy'
Restaurant.destroy_all

puts 'Restaurantes'
Restaurant.create!(name: 'Cabrera', address: 'Palermo', phone_number: '4858-9080', category: 'italian')
Restaurant.create!(name: 'Farola', address: 'Belgrano', phone_number: '4777-9011', category: 'chinese')
Restaurant.create!(name: 'Zoilo', address: 'Recoleta', phone_number: '4232-9032', category: 'french')
Restaurant.create!(name: 'Continental', address: 'Retiro', phone_number: '4858-1130', category: 'japanese')
Restaurant.create!(name: 'Santong', address: 'Madero', phone_number: '4409-9022', category: 'belgian')
puts 'End'


