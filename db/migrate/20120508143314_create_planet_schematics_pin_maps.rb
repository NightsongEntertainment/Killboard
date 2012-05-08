class CreatePlanetSchematicsPinMaps < ActiveRecord::Migration
  def change
    create_table :planetSchematicsPinMap, :id => false do |t|
      t.integer :schematicID, :null => false
      t.integer :pinTypeID, :null => false
    end
  end
end
