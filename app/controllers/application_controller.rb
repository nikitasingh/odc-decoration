class ApplicationController < ActionController::Base
 config.assets.initialize_on_precompile = false
  protect_from_forgery
  before_filter :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
  	    flash[:error] = exception.message
        redirect_to users_url
  end

end
