class Turn < ApplicationRecord
  validates :game_id, presence: true, numericality: { only_integer: true }
  validates :home_character_life_points, presence: true, numericality: { only_integer: true }
  validates :away_character_life_points, presence: true, numericality: { only_integer: true }
  belongs_to  :game
  belongs_to  :home_character, class_name: "Character"
  belongs_to  :away_character, class_name: "Character"

  def new_play
    current_game = game
    if plays == 2
      current_game.turns.create!(
        home_character: home_character,
        home_character_life_points: home_character.life_points,
        away_character: away_character,
        away_character_life_points: away_character.life_points,
        plays: 0,
      )
    else
      update(plays: plays + 1)
    end
  end
end
