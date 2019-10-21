class Product < ApplicationRecord
    belongs_to :seller
    has_many :order_items
    has_many :orders, through: :order_items
end
