class User < ApplicationRecord
    has_many :orders,foods  dependent: :destroy

    validates :email, presence: true, uniqueness: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEX}
    validates :username, presence: true, uniqueness: true
    validates :password, length : {minimum: 6}, if: -> { new_record? || !password.nil?}
end
