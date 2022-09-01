class ApplicationController < ActionController::Base
	include Pundit::Authorization
	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


	http_basic_authenticate_with name: 'Owner', password: '12345'
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_in) do |user_params|
			user_params.permit(:username, :email)
		end 
	end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
