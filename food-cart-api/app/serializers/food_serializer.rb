class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :in_stock, :description, :star_rating, :category_id

  # has_many :orders
  # has_many :carts, through: :orders

  belongs_to :category
end
