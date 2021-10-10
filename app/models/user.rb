class User < ApplicationRecord

    has_secure_password

    has_one  :profile

    has_many :saved_events
    has_many :events, through: :saved_events
end
