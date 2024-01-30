# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Add 10 members with random data
10.times do
  Member.create!(
    member_name: Faker::Name.name,
    course: Faker::Educator.course,
    member_image_url: Faker::Internet.url,
    year_of_passing: Faker::Number.between(from: 2000, to: 2022)
  )
end
