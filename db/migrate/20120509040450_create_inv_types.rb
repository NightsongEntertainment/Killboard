class CreateInvTypes < ActiveRecord::Migration
  def change
    create_table :invTypes, :id => false, :primary_key => :typeID do |t|
      t.integer :typeID, :null => false 
      t.integer :groupID, :null => true
      t.string :typeName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 3000
      t.integer :graphicID, :null => true
      t.float :radius, :null => true
      t.float :mass, :null => true
      t.float :volume, :null => true
      t.float :capacity, :null => true
      t.integer :portionSize, :null => true
      t.integer :raceID, :null => true
      t.float :basePrice, :null => true
      t.boolean :published, :null => true
      t.integer :marketGroupID, :null => true
      t.float :chanceOfDuplicating, :null => true
      t.integer :iconID, :null => true
      t.primary_key :typeID
    end
  end
end
