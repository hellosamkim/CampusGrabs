# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: "password", password_confirmation: "password")
end

25.times do
  Listing.create(title: Faker::Commerce.product_name, description: Faker::Lorem.paragraph(6), price: rand(1..500), user_id: rand(1..50))
end


