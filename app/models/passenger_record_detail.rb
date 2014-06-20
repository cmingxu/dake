# -*- encoding : utf-8 -*-
class PassengerRecordDetail < ActiveRecord::Base
  attr_accessible :location_id, :location_name, :passenger_count, :passenger_record_id, :total_price, :direction

  belongs_to :passenger_record
  scope :go, lambda { where("direction='go'") }
  scope :back, lambda { where("direction='back'") }
end
