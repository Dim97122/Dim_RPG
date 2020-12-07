class Character < ApplicationRecord
  validates :name, presence: true
  validates :life_points, presence: true, numericality: {
     only_integer: true,
     # greater_than_or_equal_to: 75,
     # less_than_or_equal_to: 125
   }
   validates :attack_points, presence: true, numericality: {
      only_integer: true,
      greater_than_or_equal_to: 25,
      less_than_or_equal_to: 50
    }
  has_many :turns
  has_many :games, through: :turns

  def is_dead
    life_points <= 0
  end

  def take_damages(attacker, turn)
    current_game = turn.game
    if self == turn.home_character
      turn.update!(
        home_character_life_points: (life_points - attacker.attack_points)
      )
    else
      turn.update!(
        away_character_life_points: (life_points - attacker.attack_points)
      )
    end
    update!(life_points: (life_points - attacker.attack_points))
    current_turn = turn.new_play
    return { victim: self, turn_infos: {turn: current_turn, index: current_turn.game.turns.length} }
  end
end
