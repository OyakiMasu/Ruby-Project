class Order < ApplicationRecord
    belongs_to :food
    belongs_to :cart, dependent: :destroy

    validates :quantity, presence: true, numericality: { greater_than: 0 }
    validates :price, presence: true, numericality: { greater_than: 0 }
    
end
