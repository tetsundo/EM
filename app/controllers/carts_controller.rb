class CartsController < ApplicationController

  def show
  	@cart_items = current_cart.cart_items
  end

  def create
   @cart_item = CartItem.new(cart_item_params)
   @cart_item.user_id = current_user.id
   @cart_item.cart_id = current_cart.id
   @cart_item.price = @cart_item.cd.price * @cart_item.quantity
   if @cart_item.quantity < @cart_item.cd.remaining_quantity
     @cart_item.save
     redirect_to cd_path(@cart_item.cd_id)
   else
     redirect_to cd_path(@cart_item.cd_id), alert: '購入枚数は在庫よりも少なくしてください'
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
