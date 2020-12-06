class Game < ApplicationRecord
  has_many :turns
  has_many :characters, through: :turns
end
