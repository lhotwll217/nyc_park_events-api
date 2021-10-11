class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :type, :days_before, :user_id, :saved_event_id

    
end
