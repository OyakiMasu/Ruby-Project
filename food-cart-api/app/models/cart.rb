class Cart < ApplicationRecord
    has_many :orders
    has_many :foods, through: :orders

    belongs_to :user
end
