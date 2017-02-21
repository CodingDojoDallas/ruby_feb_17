class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
  	if session[:logged_in_as]
  		return User.find(session[:logged_in_as])
  	end
  end

  helper_method :current_user

  def require_login
  	if !current_user
  		redirect_to '/'
  	end
  end

  def require_correct_user
  	c = current_user
  	if !c 
  		redirect_to '/'
  		return
  	end
  	if c.id != params[:id].to_i
  		redirect_to '/user'+c.id.to_s
  		return
  	end
  end
end
