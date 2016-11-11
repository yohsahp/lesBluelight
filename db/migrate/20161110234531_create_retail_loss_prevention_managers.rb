class CreateRetailLossPreventionManagers < ActiveRecord::Migration
  def change
    create_table :retail_loss_prevention_managers do |t|
      t.string :phone
      t.string :email
      t.integer :location_id

      t.timestamps null: false
    end
    add_index :retail_loss_prevention_managers, :location_id
  end
end
