require "open-uri"
file = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555140/Starent/photo%20starent/valentin_r3sw9s.jpg')

if Rails.env.development?
  User.destroy_all
  Star.destroy_all
  Review.destroy_all
  Reservation.destroy_all
end

user_tony_manager = User.new(
  first_name: 'Tony',
  last_name: 'Aguilar',
  username: 'Tony10',
  email: 'tony@manager.com',
  password: "123456",
  manager: true
)
user_tony_manager.save!

star = Star.new(
  user: user_tony_manager,
  name: 'Valentin',
  category: "actor",
  country: "Belgium",
  city: "Brussels",
  price: 200,
)
star.photo.attach(io: file, filename: 'valentine.png', content_type: 'image/png')
star.save!

user_pierrick_manager = User.new(
  first_name: 'Pierrick',
  last_name: 'Reille',
  username: 'PierOM',
  email: 'pierrick@manager.com',
  password: "123456",
  manager: true
)
user_pierrick_manager.save!

user_jack_manager = User.new(
  first_name: 'Jack',
  last_name: 'Hanna',
  username: 'BigJack',
  email: 'jack@manager.com',
  password: "123456",
  manager: true
)
user_jack_manager.save!

user_tony = User.new(
  first_name: 'Tony',
  last_name: 'Aguilar',
  username: 'Tony',
  email: 'tony@user.com',
  password: "123456",
  manager: false
)
user_tony.save!

user_pierrick = User.new(
  first_name: 'Pierrick',
  last_name: 'Reille',
  username: 'Pier',
  email: 'pierrick@user.com',
  password: "123456",
  manager: false
)
user_pierrick.save!

user_jack = User.new(
  first_name: 'Jack',
  last_name: 'Hanna',
  username: 'PapiJack',
  email: 'jack@user.com',
  password: "123456",
  manager: false
)
user_jack.save!
