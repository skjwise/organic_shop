class CartsController < ApplicationController
  helper_method :seller_products
  def show
    @order_items = current_cart.order_items
    @order_items = current_cart.map{|id| Product.find(id)}
  end

  def add_to_cart
    # @product = Product.find(params[:product_id])
    if current_cart << params[:product_id].to_i
      redirect_to sellers_path
      end
    end

    def show
      current_cart
      @order_items = current_cart.map{|id| Product.find(id)}.uniq
    end

  end