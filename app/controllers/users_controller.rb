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
      if admin_signed_in?
        redirect_to admin_user_path(current_admin.id, @user.id)
      elsif user_signed_in?
        render "show"
      end
    elsif admin_signed_in?
        redirect_to edit_admin_user_path(current_admin.id, @user.id)
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
