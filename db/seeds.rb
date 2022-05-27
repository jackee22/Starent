require "open-uri"
star1 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555140/Starent/photo%20starent/valentin_r3sw9s.jpg')
star2 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555140/Starent/photo%20starent/antoine_kb2lkg.jpg')
star3 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555138/Starent/photo%20starent/mouton_hshb2u.png')
star4 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555137/Starent/photo%20starent/maxime_y1anf1.jpg')
star5 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555138/Starent/photo%20starent/rojon_nabdgd.jpg')
star6 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653637077/Starent/photo%20starent/kevindebryune_rlgk9o.jpg')
star7 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555140/Starent/photo%20starent/aadel_fnjtmj.png')
star8 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555139/Starent/photo%20starent/edwige_zgqssh.jpg')
star9 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555139/Starent/photo%20starent/payet_lzqkq9.jpg')
star10 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555138/Starent/photo%20starent/Cristiano-Ronaldo_xpnez4.jpg')
star11 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555137/Starent/photo%20starent/lana_zhserr.webp')
star12 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555138/Starent/photo%20starent/evaelfie_haampi.jpg')
star13 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555140/Starent/photo%20starent/mia_xs6rti.webp')
star14 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555137/Starent/photo%20starent/dan_h0a2dt.jpg')
star15 = URI.open('https://res.cloudinary.com/dvuswkwwl/image/upload/v1653555139/Starent/photo%20starent/emmastones_mzg4k2.webp')
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

star_1 = Star.new(
  user: user_tony_manager,
  name: 'Captain America / Chris Evans',
  category: "actor",
  country: "Belgium",
  city: "Brussels",
  price: 200
)
star_1.photo.attach(io: star1, filename: 'valentine.png', content_type: 'image/png')
star_1.save!

star_2 = Star.new(
  user: user_tony_manager,
  name: 'Brad pitt',
  category: "actor",
  country: "Belgium",
  city: "Brussels",
  price: 2000
)
star_2.photo.attach(io: star2, filename: 'Antoine.png', content_type: 'image/png')
star_2.save!

star_3 = Star.new(
  user: user_tony_manager,
  name: 'David Guetta',
  category: "musician",
  country: "Belgium",
  city: "Brussels",
  price: 200
)
star_3.photo.attach(io: star3, filename: 'Mouton.png', content_type: 'image/png')
star_3.save!

star_4 = Star.new(
  user: user_tony_manager,
  name: 'Rafael Nadal',
  category: "athlete",
  country: "Belgium",
  city: "Brussels",
  price: 20
)
star_4.photo.attach(io: star4, filename: 'Max.png', content_type: 'image/png')
star_4.save!

star_5 = Star.new(
  user: user_tony_manager,
  name: 'Matt Damon',
  category: "actor",
  country: "USA",
  city: "San Francisco",
  price: 20000
)
star_5.photo.attach(io: star5, filename: 'Alex.png', content_type: 'image/png')
star_5.save!

user_pierrick_manager = User.new(
  first_name: 'Pierrick',
  last_name: 'Reille',
  username: 'PierOM',
  email: 'pierrick@manager.com',
  password: "123456",
  manager: true
)
user_pierrick_manager.save!

star_6 = Star.new(
  user: user_pierrick_manager,
  name: 'Olivier CSS GRID',
  category: "athlete",
  country: "Belgium",
  city: "Manchester",
  price: 200
)
star_6.photo.attach(io: star6, filename: 'KevinDbruyne.png', content_type: 'image/png')
star_6.save!

star_7 = Star.new(
  user: user_pierrick_manager,
  name: 'George Clooney',
  category: "actor",
  country: "Belgium",
  city: "Brussels",
  price: 200
)
star_7.photo.attach(io: star7, filename: 'aadel.png', content_type: 'image/png')
star_7.save!

star_8 = Star.new(
  user: user_pierrick_manager,
  name: 'Edwige Reille',
  category: "influencer",
  country: "Belgium",
  city: "Brussels",
  price: 200
)
star_8.photo.attach(io: star8, filename: 'edwige.png', content_type: 'image/png')
star_8.save!

star_9 = Star.new(
  user: user_pierrick_manager,
  name: 'Pierrick Payet',
  category: "athlete",
  country: "France",
  city: "Marseille",
  price: 200
)
star_9.photo.attach(io: star9, filename: 'payet.png', content_type: 'image/png')
star_9.save!

star_10 = Star.new(
  user: user_pierrick_manager,
  name: 'Cristiano Ronaldo',
  category: "athlete",
  country: "England",
  city: "Manchester",
  price: 200000
)
star_10.photo.attach(io: star10, filename: 'cr7.png', content_type: 'image/png')
star_10.save!

user_jack_manager = User.new(
  first_name: 'Jack',
  last_name: 'Hanna',
  username: 'BigJack',
  email: 'jack@manager.com',
  password: "123456",
  manager: true
)
user_jack_manager.save!

star_11 = Star.new(
  user: user_jack_manager,
  name: 'Lana Rhodes',
  category: "pornstar",
  country: "USA",
  city: "Los Angeles",
  price: 2000
)
star_11.photo.attach(io: star11, filename: 'lana.png', content_type: 'image/png')
star_11.save!

star_12 = Star.new(
  user: user_jack_manager,
  name: 'Eva Elfie',
  category: "pornstar",
  country: "USA",
  city: "California",
  price: 200
)
star_12.photo.attach(io: star12, filename: 'eva.png', content_type: 'image/png')
star_12.save!

star_13 = Star.new(
  user: user_jack_manager,
  name: 'Mia Khalifa',
  category: "pornstar",
  country: "USA",
  city: "New York",
  price: 200
)
star_13.photo.attach(io: star13, filename: 'khalifa.png', content_type: 'image/png')
star_13.save!

star_14 = Star.new(
  user: user_jack_manager,
  name: 'Tony',
  category: "pornstar",
  country: "El Salvador",
  city: "San Salvador",
  price: 200
)
star_14.photo.attach(io: star14, filename: 'tony.png', content_type: 'image/png')
star_14.save!

star_15 = Star.new(
  user: user_jack_manager,
  name: 'Emma Stone',
  category: "actor",
  country: "USA",
  city: "Texas",
  price: 200
)
star_15.photo.attach(io: star15, filename: 'emmaStone.png', content_type: 'image/png')
star_15.save!

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
