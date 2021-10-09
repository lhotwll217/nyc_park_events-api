class EventSerializer < ActiveModel::Serializer
  attributes :id , :categories, :contact_phone, 
   :categories ,:description, :longitude, :latitude, :end_date_time, :guide ,:image , :link, :location, :park_ids, :park_names, :start_date_time,  :title

   
end
