class ApplicationController < ActionController::Base
	http_basic_authenticate_with name: 'Owner', password: '12345'
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_in) do |user_params|
			user_params.permit(:username, :email)
		end 
	end
end
