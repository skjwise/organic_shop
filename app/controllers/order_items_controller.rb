class OrderItemsController < ApplicationController

  def show
    @order_item = current_cart.map{|id| Product.find(id)}
  end

  def create
    byebug
    @order_item = OrderItem.create(order_item_params)
    
  end


  def destroy
    session[:cart].delete(params[:id].to_i)
      redirect_to sellers_path
  end


   def order_items_params
    params.require(:order_items).permit(:quantity, :product_id, :order_id)
   end

  end



