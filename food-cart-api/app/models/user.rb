class User < ApplicationRecord
    has_many :foods
    has_many :foods, through: :order

    validates :email, presence: true, uniqueness: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEX}
    validates :username, presence: true, uniqueness: true
    validates :password, length : {minimum: 8}
end
