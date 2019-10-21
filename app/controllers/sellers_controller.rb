class SellersController < ApplicationController
  def index
    @sellers = Seller.all
  end

  def show
  end

  def new
  end

  def create
  end
end
