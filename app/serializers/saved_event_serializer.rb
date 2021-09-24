class SavedEventSerializer < ActiveModel::Serializer
  attributes :id, :categories, :contact_phone, :coordinates, :description, :end_date, :end_time, :guide, :image, :link, :location, :park_ids, :park_names, :start_date, :start_time, :title, :attended, :user_id
end
