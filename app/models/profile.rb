class Profile < ApplicationRecord
  validates_presence_of :user_id, :first_name, :address
  validates :user_id, uniqueness: true


  
end
