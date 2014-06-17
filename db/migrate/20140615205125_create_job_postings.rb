class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
      t.string :position
      t.string :application_instructions
      t.date :expiration_date
      t.text :job_description
      t.integer :job_category
      t.string :location

      t.timestamps
    end
  end
end
