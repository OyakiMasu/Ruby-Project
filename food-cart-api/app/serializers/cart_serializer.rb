class CartSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :total_price, :quantity
end
