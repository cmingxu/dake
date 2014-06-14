# -*- encoding : utf-8 -*-
class Route < ActiveRecord::Base
  attr_accessible :driver_names, :end_location_id, :end_when, :mobile, :paizhao, :paths, :start_location_id, :start_when, :xinghao, :vehicle_id

  belongs_to :end_location, :class_name => "Location"
  belongs_to :start_location, :class_name => "Location"
  belongs_to :vehicle

  validates :driver_names, :presence => { :message => "请填写司机姓名" }
  validates :end_when, :presence => { :message => "请填写到站时间" }
  validates :mobile, :presence => { :message => "请填写随车电话" }
  validates :start_when, :presence => { :message => "请填写发车时间" }
  validates :paths, :presence => { :message => "请填写途径站" }

  delegate :paizhao, :xinghao, :leixing, :to => :vehicle

  validate :start_location_not_same_as_end_location

  def start_location_not_same_as_end_location
    if self.start_location_id == self.end_location_id
      self.errors.add(:end_location_id, "不能与始发站相同")
    end
  end

  def friendly_name
    "#{self.start_location.name}-#{self.end_location.name}" 
  end

  def reverse_route
    Route.find_by_start_location_id_and_end_location_id(self.end_location_id, self.start_location_id)
  end
end
