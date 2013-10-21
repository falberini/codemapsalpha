class CreateOfflineSchools < ActiveRecord::Migration
  def change
    create_table :offline_schools do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :site_url
      t.string :ed_level
      t.string :pricing
      t.string :bio
      t.string :format

      t.timestamps
    end
  end
end
