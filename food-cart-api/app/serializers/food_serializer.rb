class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :in_stock, :description
end
