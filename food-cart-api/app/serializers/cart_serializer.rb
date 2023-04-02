class CartSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :subtotals, :user_id, :quantity

  has_many :orders
  has_many :foods, through: :orders

  belongs_to :user
  
end
