class CreateWarCombatZoneSystems < ActiveRecord::Migration
  def change
    create_table :warCombatZoneSystems, :id => false, :primary_key => :solarSystemID do |t|
      t.integer :solarSystemID, :null => false
      t.integer :combatZoneID, :null => true
      t.primary_key :solarSystemID
    end
  end
end
