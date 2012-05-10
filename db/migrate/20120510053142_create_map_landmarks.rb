class CreateMapLandmarks < ActiveRecord::Migration
  def change
    create_table :mapLandmarks, :id => false, :primary_key => :landmarkID do |t|
      t.integer :landmarkID, :null => false
      t.integer :landmarkName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 7000
      t.integer :locationID, :null => true
      t.float :x, :null => true
      t.float :y, :null => true
      t.float :z, :null => true
      t.float :radius, :null => true
      t.integer :iconID, :null => true
      t.integer :importance, :null => true
    end
  end
end
