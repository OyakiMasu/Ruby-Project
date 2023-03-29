class OrderSerializer < ActiveModel::Serializer
  attributes :id, :description, :quantity, :price, :cart_id, :food_id

  belongs_to :users
end
