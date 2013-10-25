class ChangeBioFormatInOfflineSchools < ActiveRecord::Migration
  def up
	  change_column :offline_schools, :bio, :string
  end

  def down
  	change_column :offline_schools, :bio, :text
  end
end
