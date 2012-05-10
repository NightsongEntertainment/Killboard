class CreateMapRegionJumps < ActiveRecord::Migration
  def change
    create_table :mapRegionJumps, :id => false do |t|
      t.integer :fromRegionID, :null => false
      t.integer :toRegionID, :null => false
    end
  end
end
