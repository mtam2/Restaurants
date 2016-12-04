# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Generates fake users 
10.times do |n|
  username  = Faker::Name.name
  User.create!(username: username)
end

# Generates fake restaurants
10.times do |n|
  name  = Faker::Company.name
  phone = Faker::PhoneNumber.phone_number
  address = Faker::Address.street_address
  menu = Faker::Internet.url
  Restaurant.create!(restaurant_name: name,
                     phone: phone,
                     address: address,
                     menu: menu)
end

100.times do |n|
    Rating.create!(user_id: Random.new.rand(1..10),
                   restaurant_id: Random.new.rand(1..10),
                   rating: Random.new.rand(1..5),
                   date: Time.new)
end