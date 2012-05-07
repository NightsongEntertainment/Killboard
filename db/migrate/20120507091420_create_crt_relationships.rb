class CreateCrtRelationships < ActiveRecord::Migration
  def change
    create_table :crtRelationships, :id => false, :primary_key => :relationshipID do |t|
      t.integer :relationshipID, :null => false
      t.integer :parentID, :null => true
      t.integer :parentTypeID, :null => true
      t.integer :parentLevel, :null => true
      t.integer :childID, :null => true
      t.primary_key :relationshipID
    end
  end
end
