class CreateRamActivities < ActiveRecord::Migration
  def change
    create_table :ramActivities, :id => false, :primary_key => :activityID do |t|
      t.integer :activityID, :null => false
      t.string :activityName, :null => true, :limit => 100
      t.string :iconNo, :null => true, :limit => 5
      t.string :description, :null => true, :limit => 1000
      t.boolean :published, :null => true
      t.primary_key :activityID
    end
  end
end
