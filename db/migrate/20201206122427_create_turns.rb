class CreateTurns < ActiveRecord::Migration[6.0]
  def change
    create_table :turns do |t|
      t.integer :home_character_life_points
      t.integer :away_character_life_points
      t.integer :plays

      t.timestamps
    end
  end
end
