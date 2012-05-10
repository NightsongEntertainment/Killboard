class CreateMapJumps < ActiveRecord::Migration
  def change
    create_table :mapJumps, :id => false, :primary_key => :stargateID do |t|
      t.integer :stargateID, :null => false
      t.integer :celestialID, :null => true
      t.primary_key :stargateID
    end
  end
end
