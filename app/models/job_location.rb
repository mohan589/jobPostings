class JobLocation < ApplicationRecord
  validates :user_id, :presence => true
  validates :job_type_id, :presence => true
end
