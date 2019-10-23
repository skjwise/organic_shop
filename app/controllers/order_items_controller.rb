class OrderItemsController < ApplicationController

  def show
    @order_items = current_cart.map{|id| Product.find(id)}.uniq
  end


  def destroy
    # item = session[:cart].map{|id| Product.find(id)}
    # byebug
    # #  @item.destroy
    # #  item.save
    # # redirect_to order_item_path

    session[:cart].delete(params[:id].to_i)

    redirect_to order_item_path(current_cart)
  end
   def order_items_params
    params.require(:order_items).permit!
   end
end



