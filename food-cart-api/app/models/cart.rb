class Cart < ApplicationRecord
    has_many :orders
    has_many :foods, through: :orders

    belongs_to :user
    belongs_to :foods

    validates :quantity, presence: true, numericality: {greater_than: 0}

end
