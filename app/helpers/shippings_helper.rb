# -*- encoding : utf-8 -*-
module ShippingsHelper

  def daishouhuokuan_boolean_helper(shipping)
    if shipping.is_daishouhuokuan_shouqu?
      "已收取"
    else
      "未收取"
    end
  end

  def status_in_word(shipping)
     case shipping.status.to_sym
     when :received
        "已收件"
      when :shipped
        "发货中"
      when :reached
        "已到货"
      when :delivered
        "已放件" 
      when :yishouhuokuan
        "已收货款"
      when :yiquhuokuan
        "已取货款"
     end
  end
end
