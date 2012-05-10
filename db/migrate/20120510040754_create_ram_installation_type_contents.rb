class CreateRamInstallationTypeContents < ActiveRecord::Migration
  def change
    create_table :ramInstallationTypeContents, :id => false do |t|
      t.integer :installationTypeID, :null => false
      t.integer :assemblyLineTypeID, :null => false
      t.integer :quantity, :null => true
    end
  end
end
