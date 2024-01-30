# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Create 50 fake members
5.times do
  Contact.create(
    team_name: Faker::Team.name,
    team_email: Faker::Internet.email,
    department: Faker::Job.field,
    university: Faker::University.name,
    professor_name: Faker::Name.name,
    post: Faker::Job.title,
    phone_no: Faker::PhoneNumber.phone_number,
    professor_email: Faker::Internet.email
  )
end