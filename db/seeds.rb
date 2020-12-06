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

5.times do
  Character.create!(
    name: Faker::Name.first_name,
    life_points: Faker::Number.between(from: 75, to: 125),
    attack_points: Faker::Number.between(from: 25, to: 50)
  )
end
