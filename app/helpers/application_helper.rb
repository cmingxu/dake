# -*- encoding : utf-8 -*-
module ApplicationHelper
  def icon_link(what)
     raw "<i class = 'icon-#{what.to_s}'></i>"
  end
end
