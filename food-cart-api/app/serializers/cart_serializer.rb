class CartSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :total_quantity

  belongs_to :order
end
