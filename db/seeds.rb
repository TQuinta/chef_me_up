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

# Categories for chefs - ChefMyHome, ChefMyExperience, ChefToGo

user = User.new(
  first_name: "Tammy",
  last_name: "Tams",
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.street_name,
  avatar_url: "https://res.cloudinary.com/hz3gmuqw6/image/upload/c_fill,f_auto,h_400,q_60,w_400/host_phpo2zNJC"
)

user.save!
puts "Created #{user.first_name}"

chef = ChefProfile.new(
  title: "Chef Tammy",
  description: "I prepare high quality and fresh packed meals for lunch and dinner for those that are on a busy schedule",
  category: "ChefToGo",
  user: user,
  price: 19.9,
  meal_picture_url: "https://images.unsplash.com/photo-1543352632-fea6d4f83e78?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974"
)

chef.save!
puts "Created Chef #{chef.title}"

user = User.new(
  first_name: "Victorious",
  last_name: "Vics",
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.street_name,
  avatar_url: "https://pbs.twimg.com/media/DIHWgWEUQAEGqqd.jpg"
)

user.save!
puts "Created #{user.first_name}"

chef = ChefProfile.new(
  title: "Victorious Visions",
  description: "Are you looking to impress your friends? Whilst you focus
               on entertaining your guests, I prepare the most exciting meals to match the mood",
  category: "ChefMyExperience",
  user: user,
  price: 159.9,
  meal_picture_url: "https://images.unsplash.com/photo-1547573854-74d2a71d0826?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070"
)

chef.save!
puts "Created #{chef.title}"

user = User.new(
  first_name: "Marvin",
  last_name: "Mar",
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.street_name,
  avatar_url: "https://images.unsplash.com/photo-1606858630066-b7dfd4857909?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070"
)

user.save!
puts "Created #{user.first_name}"

chef = ChefProfile.new(
  title: "Cook No More",
  description: "You have a life, the last thing you want to worry about is shopping and cooking. I do it all, so you don't have to",
  category: "ChefMyHome",
  user: user,
  price: 100,
  meal_picture_url: "https://d1zzxdyvtq79bu.cloudfront.net/uploads/images/landings/64/e4/private-chef-in-paterna.jpg"
)

chef.save!
puts "Created #{chef.title}"

user = User.new(
  first_name: "J",
  last_name: "Qualine",
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.street_name,
  avatar_url: "https://ichef.bbci.co.uk/images/ic/1232x1232/p095pr43.jpg"
)

user.save!
puts "Created #{user.first_name}"

chef = ChefProfile.new(
  title: "Home Michelin Star",
  description: "Have you ever wanted a Michelin star chef experience, but cannot get onto the waiting lists. Look no further",
  category: "ChefMyHome",
  user: user,
  price: 10,
  meal_picture_url: "https://images.unsplash.com/photo-1601063458289-77247ba485ec?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480"
)

chef.save!
puts "Created #{chef.title}"

user = User.new(
  first_name: "Samurai",
  last_name: "Sushi",
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.street_name,
  avatar_url: "https://images.unsplash.com/photo-1600924779117-927b4f81457d?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070"
)

user.save!
puts "Created #{user.first_name}"

chef = ChefProfile.new(
  title: "Samurai Sushi",
  description: "I provide a show of sushi preparation. I provide all equipment and ingredients",
  category: "ChefMyExperience",
  user: user,
  price: 200,
  meal_picture_url: "https://images.unsplash.com/photo-1553621042-f6e147245754?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1925"
)

chef.save!
puts "Created #{chef.title}"

user = User.new(
  first_name: "Sensei",
  last_name: "Sakura",
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.street_name,
  avatar_url: "https://i.ytimg.com/vi/rS_f8o366BA/hqdefault.jpg"
)

user.save!
puts "Created #{user.first_name}"

chef = ChefProfile.new(
  title: "Bento Box Bang",
  description: "Best bento boxes created freshly every day.",
  category: "ChefToGo",
  user: user,
  price: 39.9,
  meal_picture_url: "https://images.unsplash.com/photo-1596463059283-da257325bab8?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070"
)

chef.save!
puts "Created #{chef.title}"

user = User.new(
  first_name: "Sand",
  last_name: "Witch",
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.street_name,
  avatar_url: "https://thumbs.dreamstime.com/b/germ-chef-12184374.jpg"
)

user.save!
puts "Created #{user.first_name}"

chef = ChefProfile.new(
  title: "Sammiches",
  description: "Sandwiches are the greatest invention since sliced bread. I provide a variety of sandwiches with only the cheapest ingredients",
  category: "ChefToGo",
  user: user,
  price: 1,
  meal_picture_url: "https://cdn.cheapism.com/images/080316_cheap_easy_sandwich_recipe_ideas_slid.max-784x410_7DNkeyV.jpg"
)

chef.save!
puts "Created #{chef.title}"

user = User.new(
  first_name: "Bar",
  last_name: "BQ",
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.street_name,
  avatar_url: "https://media.gq.com/photos/5b0d9dcebbaaa45af108ab66/master/pass/2018-05_GQ_bbqlikeachef.jpg"
)

user.save!
puts "Created #{user.first_name}"

chef = ChefProfile.new(
  title: "Hog Roasts",
  description: "I come and cook a full hog roast. That easy.",
  category: "ChefMyExperience",
  user: user,
  price: 150,
  meal_picture_url: "https://greedylittlepig.co.uk/wp-content/uploads/2020/09/roast.jpg"
)

chef.save!
puts "Created #{chef.title}"

user = User.new(
  first_name: "Suzzy",
  last_name: "Sue",
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.street_name,
  avatar_url: "http://www.wnypersonalchef.com/images/cheflinhwide.jpg"
)

user.save!
puts "Created #{user.first_name}"

chef = ChefProfile.new(
  title: "Suzzy Chef Services",
  description: "I am a fully trained chef who will prepare all the meals for you, when you want, as you want! Ingredients not included.",
  category: "ChefMyHome",
  user: user,
  price: 300,
  meal_picture_url: "https://media.bizj.us/view/img/11179240/web-personal-chef-linh-casuccio-dm-4336-010319*1200xx4162-2343-0-104.jpg"
)

chef.save!
puts "Created #{chef.title}"
