class CreateInvPositions < ActiveRecord::Migration
  def change
    create_table :invPositions, :id => false, :primary_key => :itemID do |t|
      t.integer :itemID, :null => false
      t.float :x, :null => false
      t.float :y, :null => false
      t.float :z, :null => false
      t.float :yaw, :null => true
      t.float :pitch, :null => true
      t.float :roll, :null => true
      t.primary_key :itemID
    end
  end
end
