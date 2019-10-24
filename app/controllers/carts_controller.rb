class CartsController < ApplicationController
  helper_method :seller_products
  def show
    @order_items = current_cart.order_items
    @order_items = current_cart.map{|id| Product.find(id)}
  end

  def add_to_cart
    # @product = Product.find(params[:product_id])
    if current_cart << params[:product_id].to_i
      # byebug
      redirect_to sellers_path
      end
    end

    def show
      current_cart
      @order_items = current_cart.map{|id| Product.find(id)}.uniq
    end

    def checkout
      @order = Order.create(user_id: current_user.id)
      products = current_cart.map {|id| Product.find(id)}

        products.each do |product|
        @cart = OrderItem.create(order_id: @order.id, product_id: product.id, quantity: 1)
        # byebug
        end
       redirect_to order_path(@order.id)
    end


      # iterate through product ids in the cart
      # for each one create a new order item that belongs to the order that we just created and that product
  
  end