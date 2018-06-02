class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_cart

  def current_cart
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    else
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end

	def after_sign_in_path_for(resource)
      cds_path
  end

   def after_sign_out_path_for(resource)
    	cds_path
   end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_name_kana, :last_name_kana, :address, :tell_number, :email, :post_code])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end
end
