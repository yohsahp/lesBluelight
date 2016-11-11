class CreateOfficers < ActiveRecord::Migration
  def change
    create_table :officers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :agency_contact_id

      t.timestamps null: false
    end
  end
end
