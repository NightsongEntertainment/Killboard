class CreatePlanetSchematicsTypeMaps < ActiveRecord::Migration
  def change
    create_table :planetSchematicsTypeMap, :id => false do |t|
      t.integer :schematicID, :null => false
      t.integer :typeID, :null => false
      t.integer :quantity, :null => true
      t.boolean :isInput, :null => true
    end
  end
end
