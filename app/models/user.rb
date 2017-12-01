class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :carts
  belongs_to :current_cart, class_name: 'Cart', foreign_key: :current_cart_id

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  
end
