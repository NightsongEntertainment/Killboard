class CreateStaOperations < ActiveRecord::Migration
  def change
    create_table :staOperations, :id => false, :primary_key => :operationID do |t|
      t.integer :activityID, :null => true
      t.integer :operationID, :null => false
      t.string :operationName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 1000
      t.integer :fringe, :null => true
      t.integer :corridor, :null => true
      t.integer :hub, :null => true
      t.integer :border, :null => true
      t.integer :ratio, :null => true
      t.integer :caldariStationTypeID, :null => true
      t.integer :minmatarStationTypeID, :null => true
      t.integer :amarrStationTypeID, :null => true
      t.integer :gallenteStationTypeID, :null => true
      t.integer :joveStationTypeID, :null => true
      t.primary_key :operationID
    end
  end
end
