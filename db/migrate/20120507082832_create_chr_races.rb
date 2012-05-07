class CreateChrRaces < ActiveRecord::Migration
  def change
    create_table :chrRaces, :id => false, :primary_key => :raceID do |t|
      t.integer :raceID, :null => false
      t.string :raceName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 1000
      t.integer :iconID, :null => true
      t.string :shortDescription, :null => true, :limit => 500
      t.primary_key :raceID
    end
  end
end
