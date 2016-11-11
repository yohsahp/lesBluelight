class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :store_number
      t.string :store_name
      t.string :mall
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
