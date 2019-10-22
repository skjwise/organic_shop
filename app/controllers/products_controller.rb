class ProductsController < ApplicationController
  def index
    @products = Product.all
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
