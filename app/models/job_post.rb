class JobPost < ApplicationRecord
  include JobPostConcern

  validates :user_id, :presence => true
  validates :job_title, :presence => true

  accepts_nested_attributes_for :job_location

  delegate :name, :to => :company
  delegate :website_url, :to => :company
  delegate :city, :to => :job_location
end