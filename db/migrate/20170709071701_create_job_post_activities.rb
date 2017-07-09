class CreateJobPostActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :job_post_activities do |t|
      t.integer :user_id
      t.integer :job_post_id
      t.datetime :apply_date

      t.timestamps
    end
  end
end
