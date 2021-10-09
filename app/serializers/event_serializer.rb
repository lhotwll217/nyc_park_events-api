class EventSerializer < ActiveModel::Serializer
  attributes :id , :categories, :contact_phone,  :coordinates,
   :categories ,:description, :end_date ,:end_time, :guide ,:image , :link, :location, :park_ids, :park_names, :start_date, :start_time, :title

   
end
