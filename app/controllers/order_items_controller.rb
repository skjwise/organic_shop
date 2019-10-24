class OrderItemsController < ApplicationController
  def show
    @order_items = current_cart.map{|id| Product.find(id)}.uniq
  end


  def destroy
    session[:cart].delete(params[:id].to_i)
      redirect_to sellers_path
  end

   def order_items_params
    params.require(:order_items).permit!
   end
  end



