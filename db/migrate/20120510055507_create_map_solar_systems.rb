class CreateMapSolarSystems < ActiveRecord::Migration
  def change
    create_table :mapSolarSystems, :id => false, :primary_key => :solarSystemID do |t|
      t.integer :regionID, :null => true
      t.integer :constellationID, :null => true
      t.integer :solarSystemID, :null => false
      t.string :solarSystemName, :null => true, :limit => 100
      t.float :x, :null => true
      t.float :y, :null => true
      t.float :z, :null => true
      t.float :xMin, :null => true
      t.float :xMax, :null => true
      t.float :yMin, :null => true
      t.float :yMax, :null => true
      t.float :zMin, :null => true
      t.float :zMax, :null => true
      t.float :luminosity, :null => true
      t.boolean :border, :null => true
      t.boolean :fringe, :null => true
      t.boolean :corridor, :null => true
      t.boolean :hub, :null => true
      t.boolean :international, :null => true
      t.boolean :regional, :null => true
      t.boolean :constellation, :null => true
      t.float :security, :null => true
      t.integer :factionID, :null => true
      t.float :radius, :null => true
      t.integer :sunTypeID, :null => true
      t.string :securityClass, :null => true, :limit => 2
      t.primary_key :solarSystemID
    end
  end
end
