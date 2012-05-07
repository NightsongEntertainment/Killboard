class CreateAgtAgents < ActiveRecord::Migration
  def change
    create_table :agtAgents, :id => false, :primary_key => :agentID do |t|
      t.integer :agentID, :null => false
      t.integer :divisionID, :null => true
      t.integer :corporationID, :null => true
      t.integer :locationID, :null => true
      t.integer :level, :null => true
      t.integer :quality, :null => true
      t.integer :agentTypeID, :null => true
      t.boolean :isLocator, :null => true
      t.primary_key :agentID
    end
  end
end
