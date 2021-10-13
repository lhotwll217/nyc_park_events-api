class Notification < ApplicationRecord

    validates_uniqueness_of :days_before, :scope => [:user_id, :saved_event_id]
end
