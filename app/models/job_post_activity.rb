class JobPostActivity < ApplicationRecord
  validates :user_id, :presence => true
  validates :job_post_id, :presence => true
  validates :apply_date, :presence => true

  belongs_to :job_post

  def self.new_activity(job_post, user)
    JobPostActivity.create({user_id: user.id, job_post_id: job_post.id, apply_date: Date.today})
  end
end
