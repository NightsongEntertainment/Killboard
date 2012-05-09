class CreateInvGroups < ActiveRecord::Migration
  def change
    create_table :invGroups, :id => false, :primary_key => :groupID do |t|
      t.integer :groupID, :null => false
      t.integer :categoryID, :null => true
      t.string :groupName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 3000
      t.integer :iconID, :null => true
      t.boolean :useBasePrice, :null => true
      t.boolean :allowManufacture, :null => true
      t.boolean :allowRecycler, :null => true
      t.boolean :anchored, :null => true
      t.boolean :anchorable, :null => true
      t.boolean :fittableNonSingleton, :null => true
      t.boolean :published, :null => true
      t.primary_key :groupID
    end
  end
end
