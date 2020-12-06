class CreateTurns < ActiveRecord::Migration[6.0]
  def change
    create_table :turns do |t|
      t.belongs_to  :game
      t.belongs_to  :home_character
      t.integer     :home_character_life_points
      t.belongs_to  :away_character
      t.integer     :away_character_life_points
      t.integer     :plays
      t.timestamps
    end
  end
end
