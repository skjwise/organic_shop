class OrderItem < ApplicationRecord
    belongs_to :product
    belongs_to :order

    # validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0}

    def total_price
        total = order.quantity * order.product.price
    end

    private 

    def update_total
        self.total_price = total_price
    end

end
