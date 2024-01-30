# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Member.where(id: 51..60).each do |member|
  member.update(member_image_url: 'https://static.vecteezy.com/system/resources/thumbnails/014/750/182/small/trendy-office-boy-vector.jpg')
end