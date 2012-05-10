class CreateStaStationTypes < ActiveRecord::Migration
  def change
    create_table :staStationTypes, :id => false, :primary_key => :stationTypeID do |t|
      t.integer :stationTypeID, :null => false
      t.float :dockEntryX, :null => true
      t.float :dockEntryY, :null => true
      t.float :dockEntryZ, :null => true
      t.float :dockOrientationX, :null => true
      t.float :dockOrientationY, :null => true
      t.float :dockOrientationZ, :null => true
      t.integer :operationID, :null => true
      t.integer :officeSlots, :null => true
      t.float :reprocessingEfficiency, :null => true
      t.boolean :conquerable, :null => true
      t.primary_key :stationTypeID
    end
  end
end
