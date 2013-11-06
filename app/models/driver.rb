# -*- encoding : utf-8 -*-

class Driver < ActiveRecord::Base
  DUTY = %w(司机 会计)
  attr_accessible :address, :age, :description, :end_date, :name, :phone, :salary, :start_date, :duty

  validates :name, :presence => { :message => "姓名不能为空" }
  validates :age, :presence => { :message => "年龄不能空"}
  validates :phone, :presence => { :message => "不能空"}
  validates :start_date, :presence => { :message => "不能空"}
  validates :end_date, :presence => { :message => "不能空"}
  validates :name, :uniqueness => { :message => "信息重复" }
end
