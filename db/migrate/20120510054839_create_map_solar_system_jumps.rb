class CreateMapSolarSystemJumps < ActiveRecord::Migration
  def change
    create_table :mapSolarSystemJumps, :id => false do |t|
      t.integer :fromRegionID, :null => true
      t.integer :fromConstellationID, :null => true
      t.integer :fromSolarSystemID, :null => false
      t.integer :toSolarSystemID, :null => false
      t.integer :toConstellationID, :null => true
      t.integer :toRegionID, :null => true
    end
  end
end
