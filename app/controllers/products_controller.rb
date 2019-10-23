class ProductsController < ApplicationController
  def index
    @products = Product.all
    # @oder_item = current_cart.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create 
    byebug
  end

  def update 
    byebug
  end 

end
