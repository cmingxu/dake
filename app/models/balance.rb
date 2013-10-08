# -*- encoding : utf-8 -*-
class Balance < ActiveRecord::Base
  attr_accessible :amount, :desc, :detail_reason, :location_id, :paizhao, :reason, :user_id, :cate

  validates :amount, :presence => { :message => "请指定金额" }
  validates :amount, :numericality => { :message => "金额必须为数字", :greater_than => 0 }

  scope :in, where(:cate => "in")
  scope :out, where(:cate => "out")

  scope :with_location, lambda {|l| where(:location_id => l.id) }
  scope :with_user, lambda {|u| where(:user_id => u.id) }
  scope :with_paizhao, lambda {|paizhao| where(:paizhao => paizhao) }
  scope :with_reason, lambda {|reason| where(:reason => reason) }
  scope :with_amount_between, lambda {|start, end_amount|
    where(["amount > ? AND amount < ?", start, end_amount]) } 

  scope :with_issued_between, lambda {|start, end_time|
    where(["created_at > ? AND created_at < ?", start, end_time]) } 

  belongs_to :location
  belongs_to :user
  belongs_to :route

  before_save do
    self.route = Vehicle.find_by_paizhao(self.paizhao).route
  end
end
