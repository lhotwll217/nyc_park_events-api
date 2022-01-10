class Event < ApplicationRecord

    scope :filter_by_date, -> (date) {where start_date_time: date.to_datetime.all_day}

    has_many :saved_events
end
