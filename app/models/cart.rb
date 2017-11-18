class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.new(cart_params)
  end


end
