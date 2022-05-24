# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#   user = User.new(
#     email: Faker::Internet.email,
#     password: "123456",
#     manager: true
#   )
#   user.save!
# end

# 5.times do
#   user = User.new(
#     email: Faker::Internet.email,
#     password: "123456",
#     manager: false
#   )
#   user.save!
# end

1.times do
  star = Star.new(
    user_id: 11,
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
    user_id: 12,
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
    user_id: 13,
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
    user_id: 14,
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
    user_id: 15,
    name: Faker::Name.name,
    category: "actor",
    country: "Belgium",
    city: "Brussels",
    price: 200
  )
  star.save!
end
