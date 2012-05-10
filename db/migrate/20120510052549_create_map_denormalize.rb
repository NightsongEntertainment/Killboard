class CreateMapDenormalize < ActiveRecord::Migration
  def change
    create_table :mapDenormalize, :id => false, :primary_key => :itemID do |t|
      t.integer :itemID, :null => false
      t.integer :typeID, :null => true
      t.integer :groupID, :null => true
      t.integer :solarSystemID, :null => true
      t.integer :constellationID, :null => true
      t.integer :regionID, :null => true
      t.integer :orbitID, :null => true
      t.float :x, :null => true
      t.float :y, :null => true
      t.float :z, :null => true
      t.float :radius, :null => true
      t.string :itemName, :null => true, :limit => 100
      t.float :security, :null => true
      t.integer :celestialIndex, :null => true
      t.integer :orbitIndex, :null => true
      t.primary_key :itemID
    end
  end
end
