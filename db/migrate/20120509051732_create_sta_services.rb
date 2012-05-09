class CreateStaServices < ActiveRecord::Migration
  def change
    create_table :staServices, :id => false, :primary_key => :serviceID do |t|
      t.integer :serviceID, :null => false
      t.string :serviceName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 1000
    end
  end
end
