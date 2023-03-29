class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :image

  has_many :orders
  has_many :foods, through: :order
end
