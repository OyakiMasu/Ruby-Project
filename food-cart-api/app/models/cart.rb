class Cart < ApplicationRecord
    belongs_to :order

    validates :name, presence: true
    validates :image, presence: true
    validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
