class User < ApplicationRecord

    validates :password, confirmation: true
    validates_presence_of :email, :password
    validates :password, length: { in: 6..20 }


    has_secure_password

    has_one  :profile

    has_many :saved_events
    has_many :events, through: :saved_events
end
