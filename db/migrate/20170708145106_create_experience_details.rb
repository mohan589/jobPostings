class CreateExperienceDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :experience_details do |t|
      t.integer :user_id
      t.boolean :is_current_job
      t.date :start_date
      t.date :end_date
      t.string :job_title
      t.string :company_name
      t.string :job_location_city
      t.string :job_location_state
      t.string :job_location_country
      t.text :description

      t.timestamps
    end
  end
end
