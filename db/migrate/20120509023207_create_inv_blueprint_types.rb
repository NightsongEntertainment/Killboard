class CreateInvBlueprintTypes < ActiveRecord::Migration
  def change
    create_table :invBlueprintTypes, :id => false, :primary_key => :blueprintTypeID do |t|
      t.integer :blueprintTypeID, :null => false
      t.integer :parentBlueprintTypeID, :null => true
      t.integer :productTypeID, :null => true
      t.integer :productionTime, :null => true
      t.integer :techLevel, :null => true
      t.integer :researchProductivityTime, :null => true
      t.integer :researchMaterialTime, :null => true
      t.integer :researchCopyTime, :null => true
      t.integer :researchTechTime, :null => true
      t.integer :productivityModifier, :null => true
      t.integer :materialModifier, :null => true
      t.integer :wasteFactor, :null => true
      t.integer :maxProductionLimit, :null => true
      t.primary_key :blueprintTypeID
    end
  end
end
