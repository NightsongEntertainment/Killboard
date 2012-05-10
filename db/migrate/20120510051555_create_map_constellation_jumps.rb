class CreateMapConstellationJumps < ActiveRecord::Migration
  def change
    create_table :mapConstellationJumps, :id => false do |t|
      t.integer :fromRegionID, :null => true
      t.integer :fromConstellationID, :null => false
      t.integer :toConstellationID, :null => false
      t.integer :toRegionID, :null => true
    end
  end
end
