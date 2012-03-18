class CreateCharacterAttributes < ActiveRecord::Migration
  def change
    create_table :character_attributes do |t|
      t.string :name, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 1000
      t.string :short_description, :null => true, :limit => 500
      t.integer :icon_id, :null => true
      t.string :notes, :null => true, :limit => 500

      t.timestamps
    end
  end
end
