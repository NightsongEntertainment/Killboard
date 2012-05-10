class CreateMapLocationScenes < ActiveRecord::Migration
  def change
    create_table :mapLocationScenes, :id => false, :primary_key => :locationID do |t|
      t.integer :locationID, :null => false
      t.integer :graphicID, :null => true
      t.primary_key :locationID
    end
  end
end
