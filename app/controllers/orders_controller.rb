class OrdersController < ApplicationController
  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def add_to_cart
    @product = Product.find(params[:id])
    current_cart << @product.id
    session[:cart] =  cart

end
