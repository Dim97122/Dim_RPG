class Game < ApplicationRecord
  has_many :turns
  has_many :characters, through: :turns

  def home_character
    if turns.exists?
      turns.first.home_character
    end
  end

  def away_character
    if turns.exists?
      turns.first.away_character
    end
  end

  def current_turn
    turns.last
  end

  def winner
    if current_turn.home_character_life_points <= 0
      current_turn.away_character
    elsif current_turn.away_character_life_points <= 0
      current_turn.home_character
    end
  end
end
