class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password, :image

  has_many :orders
  has_many :foods, through: :orders
end
