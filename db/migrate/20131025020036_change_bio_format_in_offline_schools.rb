class ChangeBioFormatInOfflineSchools < ActiveRecord::Migration
  def up
	  change_column :offline_schools, :bio, :string
	  change_column :offline_schools, :format, :string
	  change_column :offline_schools, :ed_level, :string
  end

  def down
  	change_column :offline_schools, :bio, :text
  	change_column :offline_schools, :format, :text
  	change_column :offline_schools, :ed_level, :text
  end
end
