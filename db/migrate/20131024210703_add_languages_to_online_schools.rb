class AddLanguagesToOnlineSchools < ActiveRecord::Migration
  def change
    add_column :online_schools, :languages, :string
  end
end
