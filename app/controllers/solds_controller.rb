class SoldsController < ApplicationController
  # before_action :current_sold
  # helper_method :current_sold

  def create
  	@sold = Sold.create(user_id: current_user.id, cart_id: current_cart.id, subtotal: current_cart.subtotal)
  	@cart_items = current_cart.cart_items
  	# @sold_item = SoldItem.new(params[:id])
  	@cart_items.each do |cart_item|
  		@sold_item = SoldItem.new(params[:id])
  		@sold_item.cart_id = cart_item.cart_id
  		@sold_item.cd_id = cart_item.cd_id
  		@sold_item.quantity = cart_item.quantity
  		@sold_item.price = cart_item.price
  		@sold_item.user_id = cart_item.user_id
      @sold_item.sold_id = @sold.id
      @sold_item.save
      cart_item.cd.remaining_quantity -= cart_item.quantity
      cart_item.cd.save
  		cart_item.destroy
  	end
    current_cart.destroy
    redirect_to root_path, notice: '注文が完了しました。ご購入ありがとうございます！'
  end

  def index
    @sold_items = SoldItem.all
  end

  def show
  end

  private
  def sold_item_params
  	params.require(:sold_item).permit(:user_id, :cd_id, :quantity, :cart_id, :price)
  end

  # def current_sold
  # 	if session[:sold_id]
  #     @sold = Sold.find(session[:sold_id])
  #       else
  #     @sold = Sold.create(user_id: current_user.id, cart_id: current_cart.id)
  #       session[:sold_id] = @sold.id
  #   end
  # end
end
