class CreateRamAssemblyLines < ActiveRecord::Migration
  def change
    create_table :ramAssemblyLines, :id => false, :primary_key => :assemblyLineID do |t|
      t.integer :assemblyLineID, :null => false
      t.integer :assemblyLineTypeID, :null => true
      t.integer :containerID, :null => true
      t.datetime :nextFreeTime, :null => true
      t.integer :UIGroupingID, :null => true
      t.float :costInstall, :null => true
      t.float :costPerHour, :null => true
      t.integer :restrictionMask, :null => true
      t.float :discountPerGoodStandingPoint, :null => true
      t.float :surchargePerBadStandingPoint, :null => true
      t.float :minimumStanding, :null => true
      t.float :minimumCharSecurity, :null => true
      t.float :minimumCorpSecurity, :null => true
      t.float :maximumCharSecurity, :null => true
      t.float :maximumCorpSecurity, :null => true
      t.integer :ownerID, :null => true
      t.integer :activityID, :null => true
      t.primary_key :assemblyLineID
    end
  end
end
