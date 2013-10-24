class RemoveEdLevelFromOnlineSchools < ActiveRecord::Migration
  def up
    remove_column :online_schools, :ed_level
  end

  def down
    add_column :online_schools, :ed_level, :string
  end
end
