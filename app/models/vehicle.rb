# -*- encoding : utf-8 -*-
class Vehicle < ActiveRecord::Base
  LEIXNG = %w(大客 小客 大货 小货 翻斗)
  attr_accessible :leixing, :paizhao, :xinghao

  validates :leixing, :presence =>  { :message => "类型需填写" }
  validates :xinghao, :presence => { :message => "型号需要填写" }
end
