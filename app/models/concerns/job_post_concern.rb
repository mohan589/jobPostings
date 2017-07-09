module JobPostConcern
  extend ActiveSupport::Concern

  included do
    belongs_to :job_type
    belongs_to :job_location
    has_many :job_post_skill_sets
    has_many :activities, class_name: 'JobPostActivity'
  end

  def company
    Company.where(:id => self.company_id).first
  end

  module ClassMethods

  end
end