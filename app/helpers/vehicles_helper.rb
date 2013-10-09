# -*- encoding : utf-8 -*-
module VehiclesHelper

  def remind_helper(results)
    html = ""
    results.each do |result|
      html += case result.type
      when "not_found"
        content_tag(:span, "#{result.name}无记录", :class => "label label-default")
      when "chaoqi"
        content_tag(:span, "#{result.days}天前#{result.name}", :class => "label label-important")
      when "jijiangdaoqi"
        content_tag(:span, "#{result.days}天后#{result.name}" , :class => "label label-warning")
      else
      end
    end
    raw html
  end
end
