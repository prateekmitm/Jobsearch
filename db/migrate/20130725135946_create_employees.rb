class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :emp_type
      t.references :jobsearch

      t.timestamps
    end
    add_index :employees, :jobsearch_id
  end
end
