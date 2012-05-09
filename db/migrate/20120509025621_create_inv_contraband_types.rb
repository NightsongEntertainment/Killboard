class CreateInvContrabandTypes < ActiveRecord::Migration
  def change
    create_table :invContrabandTypes, :id => false do |t|
      t.integer :factionID, :null => false
      t.integer :typeID, :null => false
      t.float :standingLoss, :null => true
      t.float :confiscateMinSec, :null => true
      t.float :fineByValue, :null => true
      t.float :attackMinSec, :null => true
    end
  end
end
