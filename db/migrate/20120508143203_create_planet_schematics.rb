class CreatePlanetSchematics < ActiveRecord::Migration
  def change
    create_table :planetSchematics, :id => false, :primary_key => :schematicID do |t|
      t.integer :schematicID, :null => false
      t.string :schematicName, :null => true, :limit => 255
      t.integer :cycleTime, :null => true
      t.primary_key :schematicID
    end
  end
end
