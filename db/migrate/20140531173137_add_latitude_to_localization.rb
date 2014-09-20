class AddLatitudeToLocalization < ActiveRecord::Migration
  def change
    add_column :localizations, :latitude, :float
    add_column :localizations, :longitude, :float
  end
end
