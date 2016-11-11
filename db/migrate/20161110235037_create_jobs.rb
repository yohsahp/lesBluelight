class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :crypt_code
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
