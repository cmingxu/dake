# -*- encoding : utf-8 -*-
class BalanceDetail < ActiveRecord::Base
  attr_accessible :amount, :balance_id, :desc, :detail_reason, :reason, :detail_reason

  validates :amount, :presence => { :message => "请指定金额" }
  validates :amount, :numericality => { :message => "金额必须为数字", :greater_than => 0 }
  belongs_to :balance
  scope :audited, -> { where(status: 'audited') }
  scope :new_created, -> { where(status: 'new_created') }

  scope :in, where(:cate => "in")
  scope :out, where(:cate => "out")

  scope :with_issued_between, lambda {|start, end_time|
    where(["balance_date > ? AND balance_date < ?", start, end_time]) } 

  before_create do
    self.paizhao = self.balance.paizhao
    self.cate    = self.balance.cate
    self.location_id = self.balance.location_id
    self.route_id = self.balance.route_id
    self.balance_date = self.balance.balance_date
    self.status = :new_created
  end
end
