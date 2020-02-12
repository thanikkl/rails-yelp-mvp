# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "faker"
# Examples:
CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    category: CATEGORIES.sample
  )
  # review = Review.create(content: Faker::Restaurant.description, rating: [0..5].sample , restaurant: restaurants. )
end

puts "end of the seed"
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
