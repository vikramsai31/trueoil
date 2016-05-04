class AddLatitudeAndLongitudeToDealer < ActiveRecord::Migration
  def change
    add_column :dealers, :latitude, :float
    add_column :dealers, :longitude, :float
  end
end
