# -*- encoding : utf-8 -*-
class Admin::VehicleViewsController < ApplicationController
  def index
    @vehicles = Vehicle.includes(:vehicle_reminds)
  end
end
