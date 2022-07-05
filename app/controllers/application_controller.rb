class ApplicationController < ActionController::Base
end

def authorize
  unless current_user.admin == true
    flash[:alert] = "Unauthorized access"
    redirect_to home_calendar_path
    false
  end
end