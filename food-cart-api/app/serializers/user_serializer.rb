class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :orders
  has_many :foods, through: :orders
end
