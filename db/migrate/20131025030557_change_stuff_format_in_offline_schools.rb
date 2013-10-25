class ChangeStuffFormatInOfflineSchools < ActiveRecord::Migration
 def change
	  change_column :offline_schools, :bio, :text, :limit => nil
	  change_column :offline_schools, :site_url, :text, :limit => nil
	  change_column :offline_schools, :ed_level, :text, :limit => nil
	  change_column :offline_schools, :format, :text, :limit => nil
  end
end
