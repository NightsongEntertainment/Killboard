class CreateAgtResearchAgents < ActiveRecord::Migration
  def change
    create_table :agtResearchAgents, :id => false do |t|
      t.integer :agentID, :null => false
      t.integer :typeID, :null => false
    end
  end
end
