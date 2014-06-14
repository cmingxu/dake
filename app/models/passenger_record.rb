class PassengerRecord < ActiveRecord::Base
  attr_accessible :record_date, :route_id, :total_price, :created_by
  belongs_to :vehicle

  has_many :passenger_record_details
  belongs_to :user # user who created these passenger_records

  scope :today_passenger_record_for_vehicle, lambda {|vehicle| where(["vehicle_id=? AND record_date=?", vehicle.id, Date.today]).first }

