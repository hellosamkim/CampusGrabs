# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


campus = ["Brock University", "Carleton University", "University of Guelph", "Lakehead University", "McMaster University", "OCAD University", "University of Ottawa", "Queen's University", "Ryerson University", "University of Toronto", "Trent University", "UOIT", "University of Waterloo", "UWO", "Wilfrid Laurier University", "University of Windsor", "York University"]

25.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.safe_email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, campus: campus[rand(0..16)], user_bio: Faker::Lorem.paragraph(rand(1..4)), password: "password", password_confirmation: "password")
end

50.times do
  Listing.create(title: Faker::Commerce.product_name, description: Faker::Lorem.paragraph(rand(4..15)), price: rand(1..500), campus: campus[rand(0..16)], user_id: rand(1..5))
end

list_id = 1

def seed_image(file_name)
  File.open(File.join(Rails.root, "public/images/seed/#{file_name}.png"))
end

50.times do
  Image.create(listing_id: list_id, picture: seed_image(rand(1..25)))
  list_id += 1
end
