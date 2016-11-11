class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.timestamp :check_in_time
      t.timestamp :check_out_time
      t.string :crypt_check_code
      t.integer :officer_id
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
