class CartsController < ApplicationController

  def show
    @cart = Cart.find(params[:id])
    @user = current_user
  end

  def index
    @carts = current_user.carts
  end

end
