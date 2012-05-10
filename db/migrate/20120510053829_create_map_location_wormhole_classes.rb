class CreateMapLocationWormholeClasses < ActiveRecord::Migration
  def change
    create_table :mapLocationWormholeClasses, :id => false, :primary_key => :locationID do |t|
      t.integer :locationID, :null => false
      t.integer :wormholeClassID, :null => true
      t.primary_key :locationID
    end
  end
end
