class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    # if session[:user_id]
    #   unless @current_user
    #     @current_user = User.find(session[:user_id])
    #   end
    #   @current_user
    # end
    # ** ABOVE IS THE SAME AS THE CODE BELOW **

    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end
  
end
