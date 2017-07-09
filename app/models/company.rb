class Company < ApplicationRecord
  belongs_to :stream, foreign_key: 'business_stream_id', class_name: 'BusinessStream'

  validates :name,:presence => true
  validates :profile_description,:presence => true
  validates :business_stream_id,:presence => true
end
