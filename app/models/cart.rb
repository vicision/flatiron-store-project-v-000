class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items

  # def new
  #   @cart = Cart.new
  # end

  # def create
  #   @cart = Cart.new(cart_params)
  # end

  def show
    @cart = Cart.find(params[:id])
  end


end
