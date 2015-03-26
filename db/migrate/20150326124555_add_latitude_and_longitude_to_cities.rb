class AddLatitudeAndLongitudeToCities < ActiveRecord::Migration
  def change
    add_column :cities, :latitude, :decimal
    add_column :cities, :longitude, :decimal
  end
end
