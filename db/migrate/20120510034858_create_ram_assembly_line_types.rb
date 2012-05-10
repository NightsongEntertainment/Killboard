class CreateRamAssemblyLineTypes < ActiveRecord::Migration
  def change
    create_table :ramAssemblyLineTypes, :id => false, :primary_key => :assemblyLineTypeID do |t|
      t.integer :assemblyLineTypeID, :null => false
      t.string :assemblyLineTypeName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 1000
      t.float :baseTimeMultiplier, :null => true
      t.float :baseMaterialMultiplier, :null => true
      t.float :volume, :null => true
      t.integer :activityID, :null => true
      t.float :minCostPerHour, :null => true
      t.primary_key :assemblyLineTypeID
    end
  end
end
