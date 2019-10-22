class ProductsController < ApplicationController
  def index

  end

  def show
    @product = Product.find(params[:product_id])
  end


  def add
    @cart = []
    @cart << params[:product]
    render :index
  end
end
