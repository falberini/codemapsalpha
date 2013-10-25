class ChangeBioFormatInOfflineSchools < ActiveRecord::Migration
 def change
	  change_column :offline_schools, :bio, :text
	  change_column :offline_schools, :site_url, :text
	  change_column :offline_schools, :ed_level, :text
	  change_column :offline_schools, :format, :text
  end
end
