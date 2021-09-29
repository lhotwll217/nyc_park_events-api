class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :address, :coordinates, :first_name
  has_one :user
end
