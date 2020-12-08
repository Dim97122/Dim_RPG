class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :name
      t.string  :item_type
      t.integer :attack_points
      t.integer :defense_points
      t.timestamps
    end

    create_table :characters_items, id: false do |t|
      t.belongs_to :character
      t.belongs_to :item
    end
  end
end
