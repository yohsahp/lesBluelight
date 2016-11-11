class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :officer_id
      t.integer :job_id

      t.timestamps null: false
    end
    add_index :assignments, :officer_id
    add_index :assignments, :job_id 
  end
end
