# -*- encoding : utf-8 -*-
module ApplicationHelper
  def icon_link(what)
    raw "<i class = 'icon-#{what.to_s}'></i>"
  end

  def control_group_helper(label_name,  description = "", error_message = "", float = "both",  &block)
    error_class = error_message.blank? ? "" : "error"
    error_div = content_tag(:span, error_message, :class => "help-inline")
    group_style = (float.to_s == "both" ? "width: 98%; clear: both;" : "width: 40%; float: #{float}")
    label_html = content_tag(:span, label_name, :class => "control-label")
    description_html = content_tag(:span, "（#{description})", :class => "control-description")
    field = content_tag(:div, capture(&block) + error_div, :class => "controls")
    clear = if "left" == float then "" else content_tag(:div, "", :class => "clear") end
    content_tag(:div, label_html + description_html + field, :class => "control-group #{error_class}", :style => group_style) + clear
  end
end
