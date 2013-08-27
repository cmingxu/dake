# -*- encoding : utf-8 -*-
class Location < ActiveRecord::Base
  attr_accessible :fuzeren, :fuzeren_address, :fuzeren_mobile, :name

  validates :fuzeren, :presence => { :message => "请填写负责人姓名" }
  validates :fuzeren_mobile, :presence => { :message => "请填写负责人手机号码" }
  validates :fuzeren_address, :presence => { :message => "请填写负责人联系地址" }
  validates :name, :presence => { :message => "请填写地点名称" }

  validates :name, :uniqueness => { :message => "地点名称不能重复" }

end
