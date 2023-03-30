class CartSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :quantity

  has_many :orders
end
