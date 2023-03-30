class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :price, :cart_id, :food_id, :user_id
  
  belongs_to :user
  belongs_to :food
  belongs_to :cart
end
