class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :position_level
      t.integer :jobsearch_id

      t.timestamps
    end
  end
end
