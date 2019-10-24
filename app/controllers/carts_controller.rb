class CartsController < ApplicationController
  helper_method :seller_products
  def show
    @order_items = current_cart.order_items
    @order_items = current_cart.map{|id| Product.find(id)}
  end

  def add_to_cart
    # @product = Product.find(params[:product_id])
    if current_cart << params[:product_id].to_i
      byebug
      redirect_to sellers_path
      end
    end

    def show
      current_cart
      @order_items = current_cart.map{|id| Product.find(id)}.uniq
    end

    def checkout
      byebug
      order = Order.create(user_id: current_user.id)
      order = OrderItem.create(order_id:  order.id, o )
      # iterate through product ids in the cart
      # for each one create a new order item that belongs to the prder that we just created and that product

    end
  
  end