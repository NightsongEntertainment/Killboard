class CreateInvMetaTypes < ActiveRecord::Migration
  def change
    create_table :invMetaTypes, :id => false, :primary_key => :typeID do |t|
      t.integer :typeID, :null => false
      t.integer :parentTypeID, :null => true
      t.integer :metaGroupID, :null => true
      t.primary_key :typeID
    end
  end
end
