class CreateInvMetaGroups < ActiveRecord::Migration
  def change
    create_table :invMetaGroups, :id => false, :primary_key => :metaGroupID do |t|
      t.integer :metaGroupID, :null => false
      t.string :metaGroupName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 1000
      t.integer :iconID, :null => true
      t.primary_key :metaGroupID
    end
  end
end
