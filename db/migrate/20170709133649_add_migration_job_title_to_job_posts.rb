class AddMigrationJobTitleToJobPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :job_posts, :job_title, :string
  end
end
