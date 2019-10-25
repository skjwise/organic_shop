class OrdersController < ApplicationController
  helper_method :total_price, :update_total

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def history
    @order = Order.find_by(user_id:current_user.id)
  end

end
