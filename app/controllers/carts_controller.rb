class CartsController < ApplicationController
  def index
    @order_items = current_cart.map{|id| Product.find(id)}.map{|product| product.name}.uniq
  end

  def show
    @order_items = current_cart.order_items
   
  end


  # def add
  #   @cart = []
  #   @cart << params[:product_id]
  # end


  def add_to_cart
    # @product = Product.find(params[:product_id])
    if current_cart << params[:product_id].to_i
      redirect_to order_item_path(current_cart)
    # byebug
  end
end
end