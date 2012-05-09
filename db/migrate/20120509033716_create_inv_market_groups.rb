class CreateInvMarketGroups < ActiveRecord::Migration
  def change
    create_table :invMarketGroups, :id => false, :primary_key => :marketGroupID do |t|
      t.integer :marketGroupID, :null => true
      t.integer :parentGroupID, :null => true
      t.string :marketGroupName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 3000
      t.integer :iconID, :null => true
      t.boolean :hasTypes, :null => true
      t.primary_key :marketGroupID
    end
  end
end
