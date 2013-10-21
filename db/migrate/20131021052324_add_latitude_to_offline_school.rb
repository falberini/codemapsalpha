class AddLatitudeToOfflineSchool < ActiveRecord::Migration
  def change
    add_column :offline_schools, :latitude, :float
  end
end
