class Cart < ApplicationRecord
    has_many :orders

    validates :quantity, presence: true, numericality: {greater_than: 0}
end
