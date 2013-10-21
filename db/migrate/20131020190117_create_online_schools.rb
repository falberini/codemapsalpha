class CreateOnlineSchools < ActiveRecord::Migration
  def change
    create_table :online_schools do |t|
      t.string :name
      t.string :site_url
      t.string :ed_level
      t.string :pricing
      t.string :bio

      t.timestamps
    end
  end
end
