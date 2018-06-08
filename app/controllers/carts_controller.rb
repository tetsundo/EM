class CartsController < ApplicationController

  def show
  	@cart_items = current_cart.cart_items
  end

  def create
   @cart_item = CartItem.new(cart_item_params)
   @cart_item.user_id = current_user.id
   @cart_item.cart_id = current_cart.id
   @cart_item.price = @cart_item.cd.price * @cart_item.quantity
   @cart_item.save
  end

  def update
  	@cart_item.update(quantity: params[:quantity].to_i)
    redirect_to current_cart
  end

  def purchase
  end

  def destroy
    @cart_item.destroy
    redirect_to current_cart
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:user_id, :cd_id, :quantity, :cart_id, :price)
  end
end
