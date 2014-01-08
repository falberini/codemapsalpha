class CreateOnlineSchools < ActiveRecord::Migration
  def change
    create_table :online_schools do |t|
      t.string :name
      t.text :site_url
      t.string :ed_level
      t.string :pricing
      t.text :bio

      t.timestamps
    end
  end
end
