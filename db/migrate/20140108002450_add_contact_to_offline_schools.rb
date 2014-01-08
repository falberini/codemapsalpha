class AddContactToOfflineSchools < ActiveRecord::Migration
  def change
    add_column :offline_schools, :contact_email, :text
    add_column :offline_schools, :contact_number, :text
    add_column :offline_schools, :languages, :text
    add_column :offline_schools, :country, :text
  end
end
