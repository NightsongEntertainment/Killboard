class CreateChrAttributes < ActiveRecord::Migration
  def change
    create_table :chrAttributes, :id => false, :primary_key => :attributeID do |t|
      t.integer :attributeID, :null => false
      t.string :attributeName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 1000
      t.integer :iconID, :null => true
      t.string :shortDescription, :null => true, :limit => 500
      t.string :notes, :null => true, :limit => 500
      t.primary_key :attributeID
    end
  end
end
