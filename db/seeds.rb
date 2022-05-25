# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'date'

Booking.destroy_all
ChefProfile.destroy_all
User.destroy_all

puts "creating users"
30.times do
  user = User.new(
    email: Faker::Internet.email,
    password: '123456',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_name
  )
  user.save!
  puts "Created #{user.first_name}"
end

puts "users created"

puts "creating chef profiles"

15.times do
  user = User.all.sample
  chef = ChefProfile.new(
    title: user.first_name,
    description: Faker::Food.description,
    category: Faker::Food.ethnic_category,
    user: user,
    price: Faker::Number.between(from: 20.0, to: 150.0).round(1)
  )
  meal_picture_url = "https://source.unsplash.com/random/300×300/?#{chef.category.downcase.gsub(/\s+/, '')} food"
  chef.meal_picture_url = meal_picture_url
  chef.save!
  puts "Created #{chef.title}"
end

puts "chef profiles created"

puts "creating bookings"

15.times do
  user = User.all.sample
  chef = ChefProfile.all.sample
  booking = Booking.new(
    date: DateTime.now,
    duration: rand(1...20),
    status: %w[pending rejected confirmed].sample,
    user: user,
    chef_profile: chef
  )
  booking.save!
  puts "Created booking for #{booking.user.first_name}"
end

puts "bookings created"
