class EducationDetail < ApplicationRecord
  belongs_to :user
  validates :cerficate_degree_name, :presence => true
  validates :user_id, :presence => true
end