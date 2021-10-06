class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :hours_before, :saved_event_id
  
end
