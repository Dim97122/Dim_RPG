# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Character.destroy_all
Item.destroy_all
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

5.times do
  Item.create!(
    name: Faker::Games::ElderScrolls.weapon,
    item_type: 'Weapon',
    attack_points: Faker::Number.between(from: 5, to: 25)
  )
end

5.times do
  Item.create!(
    name: Faker::Games::ElderScrolls.jewelry,
    item_type: 'Defensive Item',
    defense_points: Faker::Number.between(from: 10, to: 40)
  )
end
