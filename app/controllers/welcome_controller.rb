# -*- encoding : utf-8 -*-
class WelcomeController < ApplicationController
  layout "public"

  def index
     redirect_to admin_dashboard_path
  end

  def dashboard
     redirect_to admin_dashboard_path
  end

  def about
    @page = Page.find_by_slug "about"
     redirect_to admin_dashboard_path
  end

  def team
     redirect_to admin_dashboard_path
  end

  def sign_as
    if Setting.easy_login_enable
      sign_in(User.find_by_login  params[:login])
    end
    redirect_to admin_dashboard_path
  end
end
