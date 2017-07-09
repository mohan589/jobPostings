class SeekerSkillSet < ApplicationRecord
  belongs_to :user
  belongs_to :skill_set
  validates :user_id, :presence => true
  validates :skill_set_id, :presence => true
end
