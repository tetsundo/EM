class CartsController < ApplicationController
  before_action :current_cart
  def show
  	@cart_items = current_cart.cart_items
  	@total_price = 0
  	@cart_items.each do |cart_item|
  	  @total_price += cart_item.price
    end
  end

  def create
   @cart_item = CartItem.new(cart_item_params)
   @cd_id = @cart_item.cd_id
   if current_cart.cart_items.find_by(cd_id: @cd_id)
     redirect_to cd_path(@cart_item.cd_id), alert: 'その商品は既にカートに入っています'
   else
   	 @cart_item.user_id = current_user.id
     @cart_item.cart_id = current_cart.id
     @cart_item.price = @cart_item.cd.price * @cart_item.quantity
     if @cart_item.quantity <= @cart_item.cd.remaining_quantity
       @cart_item.save
       redirect_to cd_path(@cart_item.cd_id)
     else
       redirect_to cd_path(@cart_item.cd_id), alert: '購入枚数は在庫よりも少なくしてください'
     end
   end

  end

  def update
  	# @cart_item.update(quantity: params[:quantity].to_i)
   #  redirect_to current_cart
  end

  def purchase
  	@cart_items = current_cart.cart_items
  	@cart = current_cart
  	@user = current_user
  	@total_price = 0
  	@cart_items.each do |cart_item|
  	  @total_price += cart_item.price
    end
  	@sold_item = SoldItem.new
  end

  def destroy
  	@cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to root_path
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:user_id, :cd_id, :quantity, :cart_id, :price)
  end
end
