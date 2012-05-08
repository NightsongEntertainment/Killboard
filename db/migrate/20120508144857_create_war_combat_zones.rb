class CreateWarCombatZones < ActiveRecord::Migration
  def change
    create_table :warCombatZones, :id => false, :primary_key => :combatZoneID do |t|
      t.integer :combatZoneID, :null => false
      t.string :combatZoneName, :null => true, :limit => 100
      t.integer :factionID, :null => true
      t.integer :centerSystemID, :null => true
      t.string :description, :null => true, :limit => 500
      t.primary_key :combatZoneID
    end
  end
end
