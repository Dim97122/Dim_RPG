class Turn < ApplicationRecord
  validates :game_id, presence: true, numericality: { only_integer: true }
  validates :home_character_life_points, presence: true, numericality: { only_integer: true }
  validates :away_character_life_points, presence: true, numericality: { only_integer: true }
  belongs_to  :game
  belongs_to  :home_character, class_name: "Character"
  belongs_to  :away_character, class_name: "Character"
end
