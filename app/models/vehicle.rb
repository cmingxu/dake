# -*- encoding : utf-8 -*-
class Vehicle < ActiveRecord::Base
  LEIXING = %w(大客 小客 大货 小货 翻斗)
  attr_accessible :leixing, :paizhao, :xinghao

  validates :leixing, :presence =>  { :message => "类型需填写" }
  validates :xinghao, :presence => { :message => "型号需要填写" }


  has_one :route

  has_many :vehicle_reminds
  has_many :reminds, :through => :vehicle_reminds

  def remind_results
    Remind.all.map do |remind|
      vr_cared = self.vehicle_reminds.with_remind(remind).last
      os  = OpenStruct.new
      os.name = remind.name
      if vr_cared
        if vr_cared.jijiangdaoqi?
          os.type = "jijiangdaoqi"
          os.days = vr_cared.dayleft
        elsif vr_cared.chaoqi?
          os.type = "chaoqi"
          os.days = -vr_cared.dayleft
        else
          next
        end

      else
        os.type = "not_found"
      end
      os
    end
  end
end
