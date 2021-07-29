# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do |i|
    a_city = City.create(name: Faker::Address.city)  
  end
  
  100.times do |i|
    a_dog = Dog.create(name: Faker::TvShows::Stargate.planet, city_id: rand(1..20))
    a_dogsitter = Dogsitter.create(name: Faker::Name.name, city_id: rand(1..20))
  end
  
  100.times do |i|
    a_stroll = Stroll.create(walk: Faker::Date.in_date_period, dogsitter_id: rand(1..100), city_id: rand(1..20))
  end
  
  100.times do |i|
    a_join_dog_stroll = JoinDogStroll.create(dog_id:rand(1..100),stroll_id:rand(1..100))
  end