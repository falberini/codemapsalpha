class CreateTryings < ActiveRecord::Migration
  def change
    create_table :tryings do |t|

      t.timestamps
    end
  end
end
