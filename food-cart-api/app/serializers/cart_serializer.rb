class CartSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :total_quantity

  has_many :orders
end
