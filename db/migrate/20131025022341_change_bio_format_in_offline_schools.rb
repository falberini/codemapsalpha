class ChangeBioFormatInOfflineSchools < ActiveRecord::Migration
 def change
	  change_column :offline_schools, :bio, :text, :limit => nil

  end
end
