class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
      cds_path
  end

   def after_sign_out_path_for(resource)
    	cds_path
   end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_name_kana, :last_name_kana, :address, :tell_number, :email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end
end
