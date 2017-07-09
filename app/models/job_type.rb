class JobType < ApplicationRecord
  validates_length_of :job_type_name, :presence => true, :maximum => 25, :allow_blank => false
  has_many :job_posts
end
