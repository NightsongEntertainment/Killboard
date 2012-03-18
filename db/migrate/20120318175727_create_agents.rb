class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name, :limit => 200
      t.integer :division_id
      t.integer :corporation_id
      t.integer :location_id
      t.integer :level
      t.integer :quality
      t.integer :agent_type_id
      t.boolean :is_locator

      t.timestamps
    end
  end
end
