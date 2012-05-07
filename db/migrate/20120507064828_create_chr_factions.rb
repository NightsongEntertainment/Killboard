class CreateChrFactions < ActiveRecord::Migration
  def change
    create_table :chrFactions, :id => false, :primary_key => :factionID do |t|
      t.integer :factionID, :null => false
      t.string :factionName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 1000
      t.integer :raceIDs, :null => true
      t.integer :solarSystemID, :null => true
      t.integer :corporationID, :null => true
      t.float :sizeFactor, :null => true
      t.integer :stationCount, :null => true
      t.integer :stationSystemCount, :null => true
      t.integer :militiaCorporationID, :null => true
      t.integer :iconID, :null => true
      t.primary_key :factionID
    end
  end
end
