class ApplicationController < ActionController::Base
    # CELLL
    
    #is available on Views
    helper_method :current_user, :logged_in?

    def require_current_user!
        redirect_to new_session_url if current_user.nil?
    end

    def current_user
        return nil if session[:session_token].nil?
        @current_user ||= Users.find_by(session_token: session[:session_token])
    end

    def ensure_logged_in
        render json: "Redirecting to login page" unless logged_in?
    #todo who is redirecting this?
    end

    def logged_in?
        #empty string is true in Ruby
        !!@current_user
    end

    def login!(user)
        session[:session_token] = user.reset_session_token!
        @current_user = user
    end

    def logout!
        current_user.reset_session_token!
        @current_user = nil
        session[:session_token] = nil
    end
end
