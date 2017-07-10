class AddExpRequiredToJobPosts < ActiveRecord::Migration[5.0]
  def up
    add_column :job_posts, :exp_required, :string
  end
  
  def down
    remove_column :job_posts, :exp_required
  end
end
