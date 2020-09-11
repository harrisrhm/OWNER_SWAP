class AddCoordinatesToHumans < ActiveRecord::Migration[6.0]
  def change
    add_column :humans, :latitude, :float
    add_column :humans, :longitude, :float
  end
end
