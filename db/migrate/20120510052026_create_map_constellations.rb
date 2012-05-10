class CreateMapConstellations < ActiveRecord::Migration
  def change
    create_table :mapConstellations, :id => false, :primary_key => :constellationID do |t|
      t.integer :regionID, :null => true
      t.integer :constellationID
      t.string :constellationName, :null => true, :limit => 100
      t.float :x, :null => true
      t.float :y, :null => true
      t.float :z, :null => true
      t.float :xMin, :null => true
      t.float :xMax, :null => true
      t.float :yMin, :null => true
      t.float :yMax, :null => true
      t.float :zMin, :null => true
      t.float :zMax, :null => true
      t.integer :factionID, :null => true
      t.float :radius, :null => true
      t.primary_key :constellationID
    end
  end
end
