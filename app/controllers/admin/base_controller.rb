# -*- encoding : utf-8 -*-
class Admin::BaseController < ApplicationController
  before_filter :authenticate_user!

  def dashboard
    if current_user.boss?
      render "boss_dashboard"
    end
  end
end
