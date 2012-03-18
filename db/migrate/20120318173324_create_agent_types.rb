class CreateAgentTypes < ActiveRecord::Migration
  def change
    create_table :agent_types do |t|
      t.string :name, :null => true, :limit => 50

      t.timestamps
    end
  end
end
