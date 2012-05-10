class CreateRamTypeRequirements < ActiveRecord::Migration
  def change
    create_table :ramTypeRequirements, :id => false do |t|
      t.integer :typeID, :null => false
      t.integer :activityID, :null => false
      t.integer :requiredTypeID, :null => false
      t.integer :quantity, :null => true
      t.float :damagePerJob, :null => true
      t.boolean :recycle, :null => true
    end
  end
end
