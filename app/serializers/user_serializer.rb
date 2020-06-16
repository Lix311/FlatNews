class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :pword, :articles
end
