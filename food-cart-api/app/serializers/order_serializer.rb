class OrderSerializer < ActiveModel::Serializer
  attributes :id, :description, :quantity, :price, :cart_id, :food_id, :user_id

  belongs_to :users
end
