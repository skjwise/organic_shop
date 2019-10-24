class OrdersController < ApplicationController
  helper_method :total_price, :update_total

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

end
