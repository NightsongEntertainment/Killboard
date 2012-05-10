class CreateRamAssemblyLineStations < ActiveRecord::Migration
  def change
    create_table :ramAssemblyLineStations, :id => false do |t|
      t.integer :stationID, :null => false
      t.integer :assemblyLineTypeID, :null => false
      t.integer :quantity, :null => true
      t.integer :stationTypeID, :null => true
      t.integer :ownerID, :null => true
      t.integer :solarSystemID, :null => true
      t.integer :regionID, :null => true
    end
  end
end
