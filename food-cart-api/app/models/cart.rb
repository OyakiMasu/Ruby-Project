class Cart < ApplicationRecord
    has_many :orders

    
    validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
