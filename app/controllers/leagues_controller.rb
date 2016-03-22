class LeaguesController < ApplicationController
  before_action :doorkeeper_authorize!

  def current_resource_owner
    user = User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end
