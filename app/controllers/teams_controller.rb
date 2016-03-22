class TeamsController < ApplicationController
  before_action :doorkeeper_authorize!
end
