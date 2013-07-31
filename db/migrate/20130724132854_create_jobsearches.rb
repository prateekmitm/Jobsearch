class CreateJobsearches < ActiveRecord::Migration
  def change
    create_table :jobsearches do |t|
      t.string :keyword
      t.string :emp_type
      t.string :job_categories
      t.string :industry
      t.integer :desired_salary
      t.string :languages
      t.string :japan_lang_level
      t.string :eng_lang_level
      t.string :position_level

      t.timestamps
    end
  end
end
