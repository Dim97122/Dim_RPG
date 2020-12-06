class Character < ApplicationRecord
  validates :name, presence: true
  validates :life_points, presence: true, numericality: {
     only_integer: true,
     greater_than_or_equal_to: 75,
     less_than_or_equal_to: 125
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
    if self == turn.home_character
      turn.update(
        home_character_life_points: (self.life_points - attacker.attack_points)
      )
      turn.new_play
    else
      turn.update(
        away_character_life_points: (self.life_points - attacker.attack_points)
      )
      turn.new_play
    end
    update(life_points: (life_points - attacker.attack_points))
  end
end
