class CreateAgtAgentTypes < ActiveRecord::Migration
  def change
    create_table :agtAgentTypes, :id => false, :primary_key => :agentTypeID do |t|
      t.integer :agentTypeID, :null => false
      t.string :agentType, :null => true, :limit => 50
      t.primary_key :agentTypeID
    end
  end
end
