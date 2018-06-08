class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  helper_method :current_cart
  before_action :current_cart

  def current_cart
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    else
      @cart = Cart.create(user_id: current_user.id)
      session[:cart_id] = @cart.id
    end
  end

	def after_sign_in_path_for(resource)
      case resource
      when User
        cds_path
      when Admin
        admin_root_path(current_admin.id)
  end
  end

   def after_sign_out_path_for(resource)
    	root_path
   end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_name_kana, :last_name_kana, :address, :tell_number, :email, :post_code])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end
end
