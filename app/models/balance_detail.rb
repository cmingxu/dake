# -*- encoding : utf-8 -*-
class BalanceDetail < ActiveRecord::Base
  attr_accessible :amount, :balance_id, :desc, :detail_reason, :reason, :detail_reason

  validates :amount, :presence => { :message => "请指定金额" }
  validates :amount, :numericality => { :message => "金额必须为数字", :greater_than => 0 }
  belongs_to :balance
end
