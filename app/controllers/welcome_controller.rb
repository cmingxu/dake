# -*- encoding : utf-8 -*-
class WelcomeController < ApplicationController
  layout "public"

  def index
    redirect_to admin_dashboard_path
  end

  def dashboard
  end

  def about
    @page = Page.find_by_slug "about"
  end

  def team
  end

  def sign_as
     if Rails.env.development?
        sign_in(User.find_by_login  params[:login])
     end

     redirect_to admin_dashboard_path
  end
end
