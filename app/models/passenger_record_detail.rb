class PassengerRecordDetail < ActiveRecord::Base
  attr_accessible :location_id, :location_name, :passenger_count, :passenger_record_id, :total_price

  belongs_to :passenger_record
end
