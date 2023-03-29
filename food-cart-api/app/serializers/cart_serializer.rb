class CartSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :quantity

  belongs_to :order
end
