class CreateMapUniverse < ActiveRecord::Migration
  def change
    create_table :mapUniverse, :id => false, :primary_key => :universeID do |t|
      t.integer :universeID, :null => false
      t.string :universeName, :null => true, :limit => 100
      t.float :x, :null => true
      t.float :y, :null => true
      t.float :z, :null => true
      t.float :xMin, :null => true
      t.float :xMax, :null => true
      t.float :yMin, :null => true
      t.float :yMax, :null => true
      t.float :zMin, :null => true
      t.float :zMax, :null => true
      t.float :radius, :null => true
      t.primary_key :universeID
    end
  end
end
