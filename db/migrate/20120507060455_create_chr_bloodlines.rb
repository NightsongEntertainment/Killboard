class CreateChrBloodlines < ActiveRecord::Migration
  def change
    create_table :chrBloodlines, :id => false, :primary_key => :bloodlineID do |t|
      t.integer :bloodlineID
      t.string :bloodlineName, :null => true, :limit => 100
      t.integer :raceID, :null => true
      t.string :description, :null => true, :limit => 1000
      t.string :maleDescription, :null => true, :limit => 1000
      t.string :femaleDescription, :null => true, :limit => 1000
      t.integer :shipTypeID, :null => true
      t.integer :corporationID, :null => true
      t.integer :perception, :null => true
      t.integer :willpower, :null => true
      t.integer :charisma, :null => true
      t.integer :memory, :null => true
      t.integer :intelligence, :null => true
      t.integer :iconID, :null => true
      t.string :shortDescription, :null => true, :limit => 500
      t.string :shortMaleDescription, :null => true, :limit => 500
      t.string :shortFemaleDescription, :null => true, :limit => 500
      t.primary_key :bloodlineID
    end
  end
end
