class OrderItemsController < ApplicationController

  def show
    @order_items = current_cart.map{|id| Product.find(id)}.uniq
  end


  def destroy
    # item = session[:cart].map{|id| Product.find(id)}
    # byebug
    #  @item.destroy
    #  item.save
    
    item = session[:cart].destroy(params[:id])
    redirect_to sellers_path

   end

   def order_items_parans
    params.require(:order_items).permit!
   end
end


