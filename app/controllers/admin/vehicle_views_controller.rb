class Admin::VehicleViewsController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end
end
