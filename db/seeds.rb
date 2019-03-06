# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '123456789',
    category:     'french'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '147258369',
    category:     'italian'
  },
  {
    name:         'Vietnameese place',
    address:      'Olomoucka street',
    phone_number: '963852741',
    category:     'chinese'
  },
  {
    name:         'Totally not made-up restaurant',
    address:      'bullshit street',
    phone_number: '423568951',
    category:     'chinese'
  },
  {
    name:         'Made-up restaurant number 5',
    address:      'Real street',
    phone_number: '111111111',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
