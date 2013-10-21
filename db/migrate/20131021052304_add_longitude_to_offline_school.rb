class AddLongitudeToOfflineSchool < ActiveRecord::Migration
  def change
    add_column :offline_schools, :longitude, :float
  end
end
