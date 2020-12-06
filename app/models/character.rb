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
end
