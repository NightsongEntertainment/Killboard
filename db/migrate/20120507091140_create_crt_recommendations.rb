class CreateCrtRecommendations < ActiveRecord::Migration
  def change
    create_table :crtRecommendations, :id => false, :primary_key => :recommendationID do |t|
      t.integer :recommendationID, :null => false
      t.integer :shipTypeID, :null => true
      t.integer :certificateID, :null => true
      t.integer :recommendationLevel, :null => false
      t.primary_key :certificateID
    end
  end
end
