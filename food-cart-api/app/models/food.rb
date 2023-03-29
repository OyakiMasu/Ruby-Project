class Food < ApplicationRecord
    has_many :orders
    has_many :users, through: :order

    validates :name, presence: true
    validates :price, presence: true, numericality: { greater_than: 0}
    validates :image, presence: true
    validates :in_stock, inclusion: {in: [true, false]}
    validates :description, presence: true, length: { minimum: 10, maximum: 500}
    validates :validate_total_price
end
