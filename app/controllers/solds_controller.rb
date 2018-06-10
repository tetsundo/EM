class SoldsController < ApplicationController
  # before_action :current_sold
  helper_method :current_sold

  def create
  	@cart_items = current_cart.cart_items
  	# @sold_item = SoldItem.new(params[:id])
  	@cart_items.each do |cart_item|
  		@sold_item = SoldItem.new(params[:id])
  		@sold_item.cart_id = cart_item.cart_id
  		@sold_item.cd_id = cart_item.cd_id
  		@sold_item.quantity = cart_item.quantity
  		@sold_item.price = cart_item.price
  		binding.pry
  		@sold_item.sold_id = current_sold.id
  		@sold_item.save
  	end
  end

  def index
  end

  def show
  end

  private
  def sold_item_params
  	params.require(:sold_item).permit(:user_id, :cd_id, :quantity, :cart_id, :price)
  end

  def current_sold
  	if session[:sold_id]
      @sold = Sold.find(session[:sold_id])
        else
      @sold = Sold.create(user_id: current_user.id, cart_id: current_cart.id)
        session[:sold_id] = @sold.id
    end
  end
end
