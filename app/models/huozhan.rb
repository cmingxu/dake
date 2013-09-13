# -*- encoding : utf-8 -*-
class Huozhan < ActiveRecord::Base
  attr_accessible :huozhan_address, :huozhan_name, :huozhan_tel, :user_id
  validates :huozhan_tel, :presence => { :message => "请指定电话" }
  validates :huozhan_address, :presence => { :message => "请指定地址" }
  validates :huozhan_name, :presence => { :message => "请指定地点" }
  validates :huozhan_name, :uniqueness => { :message => "地点已经指定过， 重复了" }

  belongs_to :user
  has_many :ship_outs, :class_name => "Shipping", :foreign_key => "from_huozhan_id"
  has_many :ship_ins, :class_name => "Shipping", :foreign_key => "to_huozhan_id"
end
