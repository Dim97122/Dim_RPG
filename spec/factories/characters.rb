FactoryBot.define do
  factory :character do
    name { Faker::Name.first_name }
    life_points { Faker::Number.between(from: 75, to: 125) }
    attack_points { Faker::Number.between(from: 25, to: 50) }
  end
end
