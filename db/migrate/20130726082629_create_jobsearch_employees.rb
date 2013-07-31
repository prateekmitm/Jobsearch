class CreateJobsearchEmployees < ActiveRecord::Migration
  def change
    create_table :jobsearch_employees do |t|
    	
      t.integer :jobsearch_id
      t.integer :employee_id
      t.timestamps
    end
  end
end
