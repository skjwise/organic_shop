class ProductsController < ApplicationController
  
  def index
    # @products = Product.all
    # @oder_item = current_cart.order_items.new
    redirect_to sellers_path
  end

  def show
    @product = Product.find(params[:id])
  end

end
