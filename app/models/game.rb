class Game < ApplicationRecord
  has_many :turns
  has_many :characters, through: :turns

  def home_character
    turns.first.home_character
  end

  def away_character
    turns.first.away_character
  end

  def current_turn
    turns.last
  end
end
