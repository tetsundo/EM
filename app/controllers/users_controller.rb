class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      if user_signed_in?
        redirect_to user_path(@user.id)
      else
        render "show"
      end
    else
        render "edit"
  end
end

  def index
    @users = User.all

  end

  private
	def user_params
	    params.require(:user).permit(:last_name, :last_name_kana, :first_name, :first_name_kana, :address, :post_code, :tell_number)
	end
end
