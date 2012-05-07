class CreateDgmAttributeTypes < ActiveRecord::Migration
  def change
    create_table :dgmAttributeTypes, :id => false, :primary_key => :attributeID do |t|
      t.integer :attributeID, :null => false
      t.string :attributeName, :null => true, :limit => 100
      t.string :description, :null => true, :limiy => 1000
      t.integer :iconID, :null => true
      t.float :defaultValue, :null => true
      t.boolean :published, :null => true
      t.string :displayName, :null => true, :limit => 100
      t.integer :unitID, :null => true
      t.boolean :stackable, :null => true
      t.boolean :highIsGood, :null => true
      t.integer :categoryID, :null => true
      t.primary_key :attributeID
    end
  end
end
