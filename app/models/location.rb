# -*- encoding : utf-8 -*-
class Location < ActiveRecord::Base
  attr_accessible :fuzeren, :fuzeren_address, :fuzeren_mobile, :name

  belongs_to :user

  validates :fuzeren, :presence => { :message => "请填写负责人姓名" }
  validates :fuzeren_address, :presence => { :message => "请填写负责人联系地址" }
  validates :name, :presence => { :message => "请填写地点名称" }
  validates :name, :uniqueness => { :message => "地点名称不能重复" }

  has_many :departure_routes, :class_name => "Route", :foreign_key => "start_location_id"
  has_many :destination_routes, :class_name => "Route", :foreign_key => "end_location_id"

  has_many :balances

  def routes
    departure_routes + destination_routes 
  end


  before_save do
    self.user_id = self.fuzeren
    self.fuzeren = User.find(self.fuzeren).name
  end
end
