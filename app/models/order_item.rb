class OrderItem < ApplicationRecord
    belongs_to :product
    belongs_to :order

    # validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0}
    # before_save :update_total
    # before_create :update_status
    # validate :product_present
    # validate :order_present

    def total_price
        total = order.quantity * order.product.price
    end

    private 

    def update_total
        self.total_price = total_price
    end

end
