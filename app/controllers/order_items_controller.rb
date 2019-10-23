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

   def create
    @order = current_order
    # @order_item = @order.order_items.new(order_item_params)
    # @order.save
    # session[:order_id] = @order.id

    @current_item = @order.order_items.find_by(product_id: params[:order_item][:product_id])
    p "current item =", @current_item

    if @current_item
      @current_item.quantity += 1
      @current_item.save
      #udpate subtotal
      @order.update_total

      session[:order_id] = @current_item.order_id
    else
      @order_item = @order.order_items.new(order_item_params)
      @order_item.save
      # @order.save
      @order.update_total
      session[:order_id] = @order.id
    end
  end
end



