class User < ApplicationRecord
    has_many :orders
    has_many :products, through: :orders

    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password_digest, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
