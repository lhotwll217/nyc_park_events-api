class Event < ApplicationRecord

    scope :filter_by_date, -> (date) {where start_date_time: date.to_datetime.all_day}
    scope :filter_by_searchbar, -> (search) {where 'title ILIKE :search OR categories ILIKE :search or location ILIKE :search', search: "%#{search}%"}
    has_many :saved_events
end
