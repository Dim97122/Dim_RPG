# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Character.destroy_all
Game.destroy_all
Turn.destroy_all

character = Character.create!(
  name: Faker::Name.first_name,
  description: Faker::Hipster.sentences.sample,
  life_points: Faker::Number.between(from: 75, to: 125),
  attack_points: Faker::Number.between(from: 25, to: 50)
)
character.avatar.attach(io: File.open('app/assets/images/achichin.jpeg'), filename: 'achichin.jpeg')

character = Character.create!(
  name: Faker::Name.first_name,
  description: Faker::Hipster.sentences.sample,
  life_points: Faker::Number.between(from: 75, to: 125),
  attack_points: Faker::Number.between(from: 25, to: 50)
)
character.avatar.attach(io: File.open('app/assets/images/cubanisto.jpg'), filename: 'cubanisto.jpg')

character = Character.create!(
  name: Faker::Name.first_name,
  description: Faker::Hipster.sentences.sample,
  life_points: Faker::Number.between(from: 75, to: 125),
  attack_points: Faker::Number.between(from: 25, to: 50)
)
character.avatar.attach(io: File.open('app/assets/images/female_elf.jpeg'), filename: 'female_elf.jpeg')

character = Character.create!(
  name: Faker::Name.first_name,
  description: Faker::Hipster.sentences.sample,
  life_points: Faker::Number.between(from: 75, to: 125),
  attack_points: Faker::Number.between(from: 25, to: 50)
)
character.avatar.attach(io: File.open('app/assets/images/valhalla.jpeg'), filename: 'valhalla.jpeg')

character = Character.create!(
  name: Faker::Name.first_name,
  description: Faker::Hipster.sentences.sample,
  life_points: Faker::Number.between(from: 75, to: 125),
  attack_points: Faker::Number.between(from: 25, to: 50)
)
character.avatar.attach(io: File.open('app/assets/images/zorro.jpeg'), filename: 'zorro.jpeg')
