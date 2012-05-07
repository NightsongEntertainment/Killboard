class CreateDgmEffects < ActiveRecord::Migration
  def change
    create_table :dgmEffects, :id => false, :primary_key => :effectID do |t|
      t.integer :effectID, :null => false
      t.string :effectName, :null => true, :limit => 400
      t.integer :effectCategory, :null => true
      t.integer :preExpression, :null => true
      t.integer :postExpression, :null => true
      t.string :description, :null => true, :limit => 1000
      t.string :guid, :null => true, :limit => 60
      t.integer :iconID, :null => true
      t.boolean :isOffensive, :null => true
      t.boolean :isAssistance, :null => true
      t.integer :durationAttributeID, :null => true
      t.integer :trackingSpeedAttributeID, :null => true
      t.integer :dischargeAttributeID, :null => true
      t.integer :rangeAttributeID, :null => true
      t.integer :falloffAttributeID, :null => true
      t.boolean :disallowAutoRepeat, :null => true
      t.boolean :published, :null => true
      t.string :displayName, :null => true, :limit => 100
      t.boolean :isWarpSafe, :null => true
      t.boolean :rangeChance, :null => true
      t.boolean :electronicChance, :null => true
      t.boolean :propulsionChance, :null => true
      t.integer :distribution, :null => true
      t.string :sfxName, :null => true, :limit => 20
      t.integer :npcUsageChanceAttributeID, :null => true
      t.integer :npcActivationChanceAttributeID, :null => true
      t.integer :fittingUsageChanceAttributeID, :null => true
      t.primary_key :effectID
    end
  end
end
