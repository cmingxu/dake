# -*- encoding : utf-8 -*-
class Vehicle < ActiveRecord::Base
  LEIXING = %w(大客 小客 大货 小货 翻斗)
  attr_accessible :leixing, :paizhao, :xinghao

  validates :leixing, :presence =>  { :message => "类型需填写" }
  validates :xinghao, :presence => { :message => "型号需要填写" }


  has_one :route

  has_many :vehicle_reminds
  has_many :reminds, :through => :vehicle_reminds
end
