module JobPostsHelper
  def is_post_user_current_user_same(job)
    job.user_id == current_user.id if current_user.present?
  end
end
