class Food < ApplicationRecord
    has_many :orders
    has_many :users, through: :orders

    validates :star_rating, { 
        numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 },
        presence: true
    }
end
