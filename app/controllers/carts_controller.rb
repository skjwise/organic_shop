class CartsController < ApplicationController
  def index
    @order_items = current_cart.map{|id| Product.find(id)}
  end

  def show
    # @order_items = current_cart.order_items
    @order_items = current_cart.map{|id| Product.find(id)}
  end

  def add_to_cart
    # @product = Product.find(params[:product_id])
    if current_cart << params[:product_id].to_i
      byebug
      redirect_to order_item_path(current_cart)
    # byebug
  end
end
end