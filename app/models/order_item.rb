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

    # def product_present
    #     if product.nil?
    #         errors.add(:product, "is not valid.")
    #     end 
    # end 

    # def order_present
    #     if order.nil?
    #         errors.add(:order, "is not a valid order.")
    #     end
    # end

    def update_total
        self.total_price = total_price
    end

end
