class ApplicationController < ActionController::Base
end

def authorize
  unless current_user.admin == true
    flash[:alert] = "unauthorized access"
    redirect_to root_path
    false
  end
end
