class CreateJobsearchPositions < ActiveRecord::Migration
  def change
    create_table :jobsearch_positions do |t|
      t.integer :jobsearch_id
      t.integer :position_id

      t.timestamps
    end
  end
end
