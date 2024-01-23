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
  FundAppeal.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    beneficiary_name: Faker::Name.name,
    bank_name: Faker::Bank.name,
    bank_address: Faker::Address.full_address,
    account_number: Faker::Bank.account_number,
    IFSC_code: Faker::Bank.swift_bic,
    name: Faker::Name.name,
    email: Faker::Internet.email,
    mobile_no: Faker::PhoneNumber.phone_number
  )
end