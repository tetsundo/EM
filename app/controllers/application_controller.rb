class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  helper_method :current_cart
  # before_action :current_cart
  	def create_cart
  		# binding.pry
  	 if current_user.present?
	      if current_user.cart.nil?
	        @cart = Cart.create(user_id: current_user.id)
	      end
	 end
    end

    def current_cart
      @cart = current_user.cart
    end

	def after_sign_in_path_for(resource)
      case resource
      when User
        root_path
      when Admin
        admin_root_path(current_admin.id)
  end
  end

   # def after_sign_out_path_for(resource)
   #  case resource
   #    when User
   #      root_path
   #    when Admin
   #      new_admin_session_path
   #    end
   # end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_name_kana, :last_name_kana, :address, :tell_number, :email, :post_code])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end
end
