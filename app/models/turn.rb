class Turn < ApplicationRecord
  validates :game_id, presence: true, numericality: { only_integer: true }
  validates :home_character_life_points, presence: true, numericality: { only_integer: true }
  validates :away_character_life_points, presence: true, numericality: { only_integer: true }
  belongs_to  :game
  belongs_to  :home_character, class_name: "Character"
  belongs_to  :away_character, class_name: "Character"

  def characters_alive
    home_character.life_points >= 0 || away_character.life_points >= 0
  end

  def new_play
    if self.plays == 2 && self.characters_alive
      turn = Turn.create!(
        game: game,
        home_character: self.home_character,
        home_character_life_points: self.home_character.life_points,
        away_character: self.away_character,
        away_character_life_points: self.away_character.life_points,
        plays: 0,
      )
    else
      if update!(plays: plays + 1)
        turn = self
      end
    end
    return turn
  end
end
