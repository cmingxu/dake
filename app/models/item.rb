# -*- encoding : utf-8 -*-
class Item < ActiveRecord::Base
  UNITS = %w(箱 桶 件 个 罐)
  attr_accessible :amount, :name, :xinghao, :unit

  has_many :item_records, :dependent => :destroy
  validates :name, :presence => { :message => "不能为空" }
  validates :amount, :presence => { :message => "不能为空" }
  validates :amount, :numericality => { :message => "必须是数字"}
end
