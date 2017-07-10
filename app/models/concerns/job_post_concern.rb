module JobPostConcern
  extend ActiveSupport::Concern

  included do
    belongs_to :job_type
    belongs_to :job_location
    has_many :job_post_skill_sets
    has_many :activities, class_name: 'JobPostActivity'
    has_many :skill_sets
  end

  def company
    Company.where(:id => self.company_id).first
  end
  
  def skill_sets
    SkillSet.where(:id => self.skill_sets).first
  end

  module ClassMethods

  end
end