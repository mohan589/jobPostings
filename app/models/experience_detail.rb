class ExperienceDetail < ApplicationRecord
  belongs_to :user
  validates :user_id, :presence => true
  validates :company_name, :presence => true
  validates :job_location_city, :presence => true
end
