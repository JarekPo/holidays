# This controller is a solution to the problem of incorrectly displayed alerts and notifications
# Created by Nejdet Kadir Bektaş
# https://medium.com/@nejdetkadir/how-to-use-devise-gem-with-ruby-on-rails-7-33b89f9a9c13

class Users::DeviseController < ApplicationController
  class Responder < ActionController::Responder
    def to_turbo_stream
      controller.render(options.merge(formats: :html))
    rescue ActionView::MissingTemplate => error
      if get?
        raise error
      elsif has_errors? && default_action
        render rendering_options.merge(formats: :html, status: :unprocessable_entity)
      else
        redirect_to navigation_location
      end
    end
  end

  self.responder = Responder
  respond_to :html, :turbo_stream
end