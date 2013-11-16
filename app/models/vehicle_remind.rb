# -*- encoding : utf-8 -*-
class VehicleRemind < ActiveRecord::Base
  attr_accessible :remind_id, :vehicle_id, :happend_at, :description
  default_scope order("happend_at ASC")
  validates :happend_at, :presence => { :message => "时间不能为空" }

  belongs_to :remind
  belongs_to :vehicle

  scope :with_remind, lambda {|remind|  where(:remind_id => remind.id)}

  def chaoqi?
    dayleft < 0
  end

  def jijiangdaoqi?
    dayleft < self.remind.remind && dayleft >= 0
  end

  def dayleft
    (((self.happend_at + self.remind.repeating.days) - Time.now) / 1.days).floor
  end

end
