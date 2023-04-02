class User < ApplicationRecord
    has_secure_password
    has_many :carts

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    # validates :email, format: {with: URI::MailTo::EMAIL_REGEX}
    validates :password, presence: true, uniqueness: true
end
