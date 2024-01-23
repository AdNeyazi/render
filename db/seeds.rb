# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Create 50 fake members
50.times do
  Event.create(
    event_title: Faker::Lorem.words(number: 3).join(' '), # Generate a random title with 3 words
    description: Faker::Lorem.paragraph,
    event_location: Faker::Address.city,
    event_type: Faker::Lorem.word,
    event_image_url: Faker::Internet.url,
  )
end