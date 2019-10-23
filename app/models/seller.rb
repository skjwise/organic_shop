class Seller < ApplicationRecord
    has_many :products

    def seller_products
        self.products
    end
end
