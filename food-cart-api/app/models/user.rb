class User < ApplicationRecord
    has_many :orders
    has_many :foods, through: :orders

    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: true, length: {minimum: 8}
end
