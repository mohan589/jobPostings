class CreateJobPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :job_posts do |t|
      t.integer :user_id
      t.integer :job_type_id
      t.integer :company_id
      t.boolean :is_company_name_hidden
      t.text :job_description
      t.integer :job_location_id
      t.boolean :is_active

      t.timestamps
    end
  end
end
