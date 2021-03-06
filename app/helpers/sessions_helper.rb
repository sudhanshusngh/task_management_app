module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
    end

    def logged_in?
        !current_user.nil?
    end

    def logged_in_as_manager?
        current_user(role: params[:role])
    end

    def authorized
        redirect_to '/welcome' unless logged_in_as_manager?
    end

    def current_user?(user)
        user == current_user
    end

    def current_user
        user_id = session[:user_id]
        @current_user ||= User.find_by(id: user_id)
    end

    def log_out
        session.delete(:user_id)
        current_user = nil
    end

end
