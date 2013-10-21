class AddStreetToOfflineSchool < ActiveRecord::Migration
  def change
    add_column :offline_schools, :street, :string
  end
end
