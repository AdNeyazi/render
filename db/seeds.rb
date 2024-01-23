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
  Newsroom.create(
    title: Faker::Lorem.sentence,
    event_image: Faker::Placeholdit.image,
    content: Faker::Lorem.paragraph,
    post_date: Faker::Date.between(from: 1.year.ago, to: Date.today)
  )
end