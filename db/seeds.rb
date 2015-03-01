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
  Listing.create(title: Faker::Commerce.product_name, description: Faker::Lorem.paragraph(rand(4..15)), price: rand(1..500), user_id: rand(1..50))
end

list_id = 1

def seed_image(file_name)
  File.open(File.join(Rails.root, "public/images/seed/#{file_name}.png"))
end

25.times do
  Image.create(listing_id: list_id, picture: seed_image(list_id))
  list_id += 1
end
