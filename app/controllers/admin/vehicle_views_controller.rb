# -*- encoding : utf-8 -*-
class Admin::VehicleViewsController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end
end
