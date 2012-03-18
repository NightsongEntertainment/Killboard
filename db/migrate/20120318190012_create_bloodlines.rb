class CreateBloodlines < ActiveRecord::Migration
  def change
    create_table :bloodlines do |t|
      t.string :name, :null => true, :limit => 100
      t.integer :race_id, :null => true
      t.string :description, :null => true, :limit => 1000
      t.string :short_description, :null => true, :limit => 500
      t.string :male_description, :null => true, :limit => 1000
      t.string :short_male_description, :null => true, :limit => 500
      t.string :female_description, :null => true, :limit => 1000
      t.string :short_female_description, :null => true, :limit => 500
      t.integer :ship_type_id, :null => true
      t.integer :corporation_id, :null => true
      t.integer :perception, :null => true
      t.integer :willpower, :null => true
      t.integer :charisma, :null => true
      t.integer :memory, :null => true
      t.integer :intelligence, :null => true
      t.integer :icon_id, :null => true

      t.timestamps
    end
  end
end
