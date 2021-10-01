class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :address, :coordinates, :first_name, :user_id
  
  
end
