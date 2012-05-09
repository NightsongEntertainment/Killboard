class CreateInvFlags < ActiveRecord::Migration
  def change
    create_table :invFlags, :id => false, :primary_key => :flagID do |t|
      t.integer :flagID, :null => false
      t.string :flagName, :null => true, :limit => 200
      t.string :flagText, :null => true, :limit => 100
      t.integer :orderID, :null => true
      t.primary_key :flagID
    end
  end
end
