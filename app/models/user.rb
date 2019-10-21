class User < ApplicationRecord
    has_many :orders
    has_many :products, through: :orders
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password_digest, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
end
