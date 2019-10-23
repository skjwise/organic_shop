class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items
    has_many :products, through: :order_items
    before_save :update_total
    before_create :update_status


    def total_price
        self.order_items.map {|product| product.price }.sum
    end

    private 

    def update_status
        if self.status == nil
            self.status = "In Progress"
        else
            self.status = "Completed!"
        end
    end

    def update_total
        self.total_price = total_price
    end
end
