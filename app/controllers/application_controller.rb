class ApplicationController < ActionController::Base
    before_action :logged_in_user
    before_action :logged_in?
    
    def logged_in?
        redirect_to new_login_path unless login_user
    end

    def logged_in_user
        @current_user = User.find_by(id: cookies[:user_id])
    end
end
