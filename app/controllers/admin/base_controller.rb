# -*- encoding : utf-8 -*-
class Admin::BaseController < ApplicationController
  before_filter :authenticate_user!

  def dashboard
    if current_user.boss?
      render "boss_dashboard"
    end
  end

  def configuration
    if current_user.boss?
      @locations = Location.all
      render "boss_configuration"
    end
  end
end
