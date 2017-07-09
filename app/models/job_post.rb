class JobPost < ApplicationRecord
  validates :user_id, :presence => true
  validates :job_title, :presence => true

  belongs_to :job_type
  belongs_to :job_location
  has_many :job_post_skill_sets
  has_many :activities, class_name: 'JobPostActivity'
  accepts_nested_attributes_for :job_location

  def company
    Company.where(:id => self.company_id).first
  end
end