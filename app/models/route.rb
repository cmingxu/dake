# -*- encoding : utf-8 -*-
class Route < ActiveRecord::Base
  attr_accessible :driver_names, :end_location_id, :end_when, :mobile, :paizhao, :paths, :start_location_id, :start_when, :xinghao

  belongs_to :end_location, :class_name => "Location"
  belongs_to :start_location, :class_name => "Location"

  validates :paizhao, :uniqueness => { :message => "车牌照不能重复"}
  validates :driver_names, :presence => { :message => "请填写司机姓名" }
  validates :end_when, :presence => { :message => "请填写到站时间" }
  validates :mobile, :presence => { :message => "请填写随车电话" }
  validates :paizhao, :presence => { :message => "请填写车牌照" }
  validates :start_when, :presence => { :message => "请填写发车时间" }
  validates :xinghao, :presence => { :message => "请填写客车型号" }
  validates :paths, :presence => { :message => "请填写途径站" }

  validate :start_location_not_same_as_end_location

  def start_location_not_same_as_end_location
    if self.start_location_id == self.end_location_id
      self.errors.add(:end_location_id, "不能与始发站相同")
    end
  end
end
