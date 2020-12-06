class Turn < ApplicationRecord
  belongs_to  :game
  belongs_to  :home_character, class_name: "Character"
  belongs_to  :away_character, class_name: "Character"
end
