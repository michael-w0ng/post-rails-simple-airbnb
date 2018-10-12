# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

20.times do |i|
  puts "Creating flat ##{i}"
  Flat.create!(
    name: Faker::HarryPotter.location,
    address: Faker::GameOfThrones.city,
    description: Faker::FamousLastWords.last_words,
    price_per_night: Faker::Number.number(2),
    number_of_guests: Faker::Number.number(1)
  )
end

puts 'Finished!'
