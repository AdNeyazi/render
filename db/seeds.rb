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
  CommitteeDetail.create(
    name: Faker::Company.name,
    contact_details: Faker::Address.full_address,
    telephone: Faker::PhoneNumber.phone_number,
    vision: Faker::Lorem.paragraph,
    mission: Faker::Lorem.paragraph
  )
end