class CreateAgencyContacts < ActiveRecord::Migration
  def change
    create_table :agency_contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :location_id

      t.timestamps null: false
    end
    add_index :agency_contacts, :location_id
  end
end
