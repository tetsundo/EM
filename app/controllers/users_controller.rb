class UsersController < ApplicationController
  def show
  	@user = current_user
  end

  def edit
  	@user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
	def user_params
	    params.require(:user).permit(:last_name, :last_name_kana, :first_name, :first_name_kana, :address, :post_code, :tell_number)
	end
end
