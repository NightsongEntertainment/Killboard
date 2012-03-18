class CreateAncestries < ActiveRecord::Migration
  def change
    create_table :ancestries do |t|
      t.string :name, :null => true, :limit => 100
      t.integer :bloodline_id
      t.string :description, :null => true, :limit => 1000
      t.string :short_description, :null => true, :limit => 500
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
