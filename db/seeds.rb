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
  MessageHead.create(
    title: Faker::Lorem.sentence,
    photo: Faker::LoremFlickr.image,
    description: Faker::Lorem.paragraph,
    name: Faker::Name.name,
    department: Faker::Lorem.word,
    post: Faker::Lorem.word,
    university: Faker::University.name
  )
end