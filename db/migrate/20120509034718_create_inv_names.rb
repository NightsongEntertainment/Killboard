class CreateInvNames < ActiveRecord::Migration
  def change
    create_table :invNames, :id => false, :primary_key => :itemID do |t|
      t.integer :itemID, :null => false
      t.string :itemName, :null => false, :limit => 200
      t.primary_key :itemID
    end
  end
end
