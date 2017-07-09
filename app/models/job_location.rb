class JobLocation < ApplicationRecord
  validates :user_id
  validates :job_type_id, :presence => true
end
