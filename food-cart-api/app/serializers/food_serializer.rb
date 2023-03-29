class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :in_stock, :description, :star_rating

  has_many :orders
  has_many :users, through: :orders
end
