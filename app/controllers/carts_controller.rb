class CartsController < ApplicationController
  def index
  end

  def show
  end

  def add_to_cart
    # @product = Product.find(params[:product_id])
    current_cart << params[:product_id].to_i
    byebug
  end

end