class CreateStaStations < ActiveRecord::Migration
  def change
    create_table :staStations, :id => false, :primary_key => :stationID do |t|
      t.integer :stationID, :null => false
      t.integer :security, :null => true
      t.float :dockingCostPerVolume, :null => true
      t.float :maxShipVolumeDockable, :null => true
      t.integer :officeRentalCost, :null => true
      t.integer :operationID, :null => true
      t.integer :stationTypeID, :null => true
      t.integer :corporationID, :null => true
      t.integer :solarSystemID, :null => true
      t.integer :constellationID, :null => true
      t.integer :regionID, :null => true
      t.string :stationName, :null => true, :limit => 100
      t.float :x, :null => true
      t.float :y, :null => true
      t.float :z, :null => true
      t.float :reprocessingEfficiency, :null => true
      t.float :reprocessingStationsTake, :null => true
      t.integer :reprocessingHangarFlag, :null => true
      t.primary_key :stationID
    end
  end
end
