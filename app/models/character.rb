class Character < ApplicationRecord
  validates :name, presence: true
  validates :life_points, presence: true, numericality: { only_integer: true }
  validates :attack_points, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 25,
    less_than_or_equal_to: 50
  }
  has_one_attached :avatar
  has_many :turns
  has_many :games, through: :turns
  has_and_belongs_to_many :items

  def power_level
    power_level = attack_points
    offensive_items = items.where('item_type = ?', 'Weapon')
    if offensive_items
      offensive_items.each do |item|
        power_level += item.attack_points
      end
    end
    return power_level
  end

  def armor_level
    armor_level = life_points
    defensive_items = items.where('item_type = ?', 'Defensive Item')
    if defensive_items
      defensive_items.each do |item|
        armor_level += item.defense_points
      end
    end
    return armor_level
  end

  def is_dead
    life_points <= 0
  end

  def take_damages(attacker, turn)
    current_game = turn.game
    current_turn = turn.new_play
    if self == turn.home_character
      current_turn.update!(
        home_character_life_points: (armor_level - attacker.power_level)
      )
    else
      current_turn.update!(
        away_character_life_points: (armor_level - attacker.power_level)
      )
    end
    update!(life_points: (armor_level - attacker.power_level))
    return { victim: self, turn_infos: {turn: current_turn, index: current_game.turns.length} }
  end
end
