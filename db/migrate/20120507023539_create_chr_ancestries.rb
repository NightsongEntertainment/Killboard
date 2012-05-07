class CreateChrAncestries < ActiveRecord::Migration
  def change
    create_table :chrAncestries, :id => false, :primary_key => :ancestryID do |t|
      t.integer :ancestryID, :null => false
      t.string :ancestryName, :null => true, :limit => 100
      t.integer :bloodlineID, :null => true
      t.string :description, :null => true, :limit => 1000
      t.integer :perception, :null => true
      t.integer :willpower, :null => true
      t.integer :charisma, :null => true
      t.integer :memory, :null => true
      t.integer :intelligence, :null => true
      t.integer :iconID, :null => true
      t.string :shortDescription, :null => true, :limit => 500
      t.primary_key :ancestryID
    end
  end
end
