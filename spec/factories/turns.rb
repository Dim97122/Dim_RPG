FactoryBot.define do
  factory :turn do
    game { FactoryBot.create(:game) }
    home_character { FactoryBot.create(:character) }
    away_character { FactoryBot.create(:character) }
    home_character_life_points { "#{home_character.life_points}" }
    away_character_life_points { "#{away_character.life_points}" }
    plays { 0 }
  end
end
