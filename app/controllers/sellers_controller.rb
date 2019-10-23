class SellersController < ApplicationController
  def index
    @sellers = Seller.all
  end

  def show
    @seller = Seller.find(params[:id])
  end

  # def checkout
  #   order = Order.create(user: current_user) # <#Order id: 29 user_id: 5 >

  #   session[:cart].each do |product_id|
  #     OrderItem.create(product_id: product_id, order_id: order.id)
  #   end
  #   #[5, 67, 2]
  # end


end
