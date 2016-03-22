class SportsController < ApplicationController
  before_action :doorkeeper_authorize!
end
