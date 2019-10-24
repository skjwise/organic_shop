class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

end
