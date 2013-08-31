# -*- encoding : utf-8 -*-
class Balance < ActiveRecord::Base
  attr_accessible :amount, :desc, :detail_reason, :location_id, :paizhao, :reason, :user_id

  validates :amount, :presence => { :message => "请指定金额" }
  validates :amount, :numericality => { :message => "金额必须为数字", :greater_than => 0 }


  belongs_to :location
  belongs_to :user
  belongs_to :route

  before_save do
    self.route = Route.find_by_paizhao self.paizhao
  end
end
