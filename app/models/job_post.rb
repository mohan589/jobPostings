class JobPost < ApplicationRecord
  validates :user_id, :presence => true
  validates :job_title, :presence => true

  belongs_to :job_type
  belongs_to :job_location
  has_many :job_post_skill_sets
  has_many :activities, foreign_key: 'job_post_activity_id', class_name: 'JobPostActivity'
  accepts_nested_attributes_for :job_location
end