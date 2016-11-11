class CreateStoreManagers < ActiveRecord::Migration
  def change
    create_table :store_managers do |t|
      t.string :email
      t.string :phone
      t.string :name
      t.integer :location_id

      t.timestamps null: false
    end
    add_index :store_managers, :location_id
  end
end
