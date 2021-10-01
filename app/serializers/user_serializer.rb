class UserSerializer < ActiveModel::Serializer
  attributes :id, :password_digest, :email, :email_confirmed, :confirm_token

  has_one :profile
end
