class CreateEveIcons < ActiveRecord::Migration
  def change
    create_table :eveIcons, :id => false, :primary_key => :iconID do |t|
      t.integer :iconID, :null => false
      t.string :iconFile, :null => false, :limit => 500
      t.string :description, :null => false, :limit => 1000

      t.timestamps
    end
  end
end
