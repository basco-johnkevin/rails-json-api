class ApplicationController < ActionController::Base
  include JSONAPI::ActsAsResourceController

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def context
    {
      current_user: current_user
    }
  end

  def current_user
    @current_user ||= _doorkeeper_user
  end

  def _doorkeeper_user
    return unless valid_doorkeeper_token?

    User.find(doorkeeper_token.resource_owner_id)
  end
end
