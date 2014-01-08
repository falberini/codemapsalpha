class RemovePricingFromOfflineSchools < ActiveRecord::Migration
  def up
    remove_column :offline_schools, :pricing
  end

  def down
    add_column :offline_schools, :pricing, :string
  end
end
