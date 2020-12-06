class Character < ApplicationRecord
  has_many :turns
  has_many :games, through: :turns
end
