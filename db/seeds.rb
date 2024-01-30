# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Create 50 fake members
4.times do
  Recruit.create(
    name: Faker::Name.name,
    email_id: Faker::Internet.email,
    contact_no: Faker::PhoneNumber.phone_number,
    company_name: Faker::Company.name,
    role: Faker::Job.title,
    message: Faker::Lorem.paragraph
  )
end