# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# if Rails.env.development?
#   User.destroy_all
#   Star.destroy_all
#   Review.destroy_all
#   Reservation.destroy_all
# end

# 5.times do
#   user = User.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     username: Faker::Games::Pokemon.name,
#     email: Faker::Internet.email,
#     password: "123456",
#     manager: true
#   )
#   user.save!
# end

# 5.times do
#   user = User.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     username: Faker::Games::Pokemon.name,
#     email: Faker::Internet.email,
#     password: "123456",
#     manager: false
#   )
#   user.save!
# end

1.times do
  star = Star.new(
    user_id: 35,
    name: Faker::Name.name,
    category: "actor",
    country: "Belgium",
    city: "Brussels",
    price: 200
  )
  star.save!
end
1.times do
  star = Star.new(
    user_id: 36,
    name: Faker::Name.name,
    category: "actor",
    country: "Belgium",
    city: "Brussels",
    price: 200
  )
  star.save!
end
1.times do
  star = Star.new(
    user_id: 37,
    name: Faker::Name.name,
    category: "actor",
    country: "Belgium",
    city: "Brussels",
    price: 200
  )
  star.save!
end
1.times do
  star = Star.new(
    user_id: 38,
    name: Faker::Name.name,
    category: "actor",
    country: "Belgium",
    city: "Brussels",
    price: 200
  )
  star.save!
end
1.times do
  star = Star.new(
    user_id: 39,
    name: Faker::Name.name,
    category: "actor",
    country: "Belgium",
    city: "Brussels",
    price: 200
  )
  star.save!
end
