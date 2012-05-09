class CreateStaOperationServices < ActiveRecord::Migration
  def change
    create_table :staOperationServices, :id => false do |t|
      t.integer :operationID, :null => false
      t.integer :serviceID, :null => false
    end
  end
end
