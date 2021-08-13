class ApplicationController < ActionController::Base
=begin    before_action :authorized
    helper_method :present_user
    helper_method :logged_in_as_manager?
    helper_method :logged_in?
    helper_method :log_out
    helper_method :log_in

    def log_in(user)
        session[:user_id] = user.id
    end

    def logged_in?
        !current_user.nil?
    end

    def logged_in_as_manager?
        present_user(role: params[:role])
    end

    def authorized
        redirect_to '/welcome' unless logged_in_as_manager?
    end

    def current_user?(user)
        user == present_user
    end

    def present_user
        User.find(id: session[:user_id])
    end

    def log_out
        session.delete(:user_id)
        present_user = nil
    end


=end
end