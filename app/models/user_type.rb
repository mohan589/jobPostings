class UserType < ApplicationRecord
  validates_length_of :name, :presence => true, :maximum => 25, :allow_blank => false
end
