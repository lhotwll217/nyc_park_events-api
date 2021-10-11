class SavedEventSerializer < ActiveModel::Serializer
  attributes :id, :attended
  has_one :user
  has_one :event

  has_many :notifications
end
