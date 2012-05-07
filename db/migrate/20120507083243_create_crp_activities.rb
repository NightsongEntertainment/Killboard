class CreateCrpActivities < ActiveRecord::Migration
  def change
    create_table :crpActivities, :id => false, :primary_key => :activityID do |t|
      t.integer :activityID, :null => false
      t.string :activityName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 1000
      t.primary_key :activityID
    end
  end
end
