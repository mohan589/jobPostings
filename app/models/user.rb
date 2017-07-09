class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :seeker_profiles, :dependent => :destroy, inverse_of: :user
  has_many :education_details, :dependent => :destroy, inverse_of: :user
  has_many :experience_details, :dependent => :destroy, inverse_of: :user
  has_many :seeker_skill_sets, :dependent => :destroy, inverse_of: :user

  accepts_nested_attributes_for :seeker_profiles, :education_details, :experience_details, :seeker_skill_sets, allow_destroy: true
end