class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name, :null => true, :limit => 200
      t.string :description, :null => true, :limit => 1000
      t.integer :icon_id, :null => true
      t.string :short_description, :null => true, :limit => 500

      t.timestamps
    end
  end
end
