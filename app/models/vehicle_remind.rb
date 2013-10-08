# -*- encoding : utf-8 -*-
class VehicleRemind < ActiveRecord::Base
  attr_accessible :remind_id, :vehicle_id, :happend_at, :description

  belongs_to :remind
  belongs_to :vehicle
end
