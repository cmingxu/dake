# -*- encoding : utf-8 -*-
class Remind < ActiveRecord::Base
  attr_accessible :name, :remind, :repeating

  validates :name, :presence => { :message => "项目名称不能为空" }
  validates :remind, :presence => { :message => "提前提醒时间不能空" }
  validates :repeating, :presence => { :message => "提醒周期不能为空" }
  validates :name, :uniqueness => { :message => "项目不能重复" }
  validates :remind, :numericality => { :message => "提前提醒时间需为数字" }
  validates :repeating, :numericality => { :message => "提醒周期需是数字" }
end
