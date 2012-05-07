class CreateEveGraphics < ActiveRecord::Migration
  def change
    create_table :eveGraphics, :id => false, :primary_key => :graphicID do |t|
      t.integer :graphicID, :null => false
      t.string :graphicFile, :null => false, :limit => 500
      t.string :description, :null => false, :limit => 1000
      t.boolean :obsolete, :null => false
      t.string :graphicType, :null => true, :limit => 100
      t.boolean :collidable, :null => true
      t.integer :explosionID, :null => true
      t.integer :directoryID, :null => true
      t.string :graphicName, :null => true, :limit => 64
      t.primary_key :graphicID
    end
  end
end
