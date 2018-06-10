class SoldsController < ApplicationController

  def create
  	@sold_item = SoldItem.new(params[:id])
  end

  def index
  end

  def show
  end

  private
  def sold_item_params
  	params.require(:sold_item).permit(:user_id, :cd_id, :quantity, :cart_id, :price)
  end
end
