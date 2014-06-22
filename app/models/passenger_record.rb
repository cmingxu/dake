# -*- encoding : utf-8 -*-
class PassengerRecord < ActiveRecord::Base
  attr_accessible :record_date, :total_price, :created_by
  belongs_to :vehicle

  has_many :passenger_record_details, :dependent => :destroy
  belongs_to :user # user who created these passenger_records

  scope :today_passenger_record_for_vehicle, lambda {|vehicle| where(["vehicle_id=? AND record_date=?", vehicle.id, Date.today]) }

  def self.create_passenger_record_for_vehicle(vehicle)
    pr = create do |passenger_record|
      passenger_record.record_date = Date.today
      passenger_record.vehicle = vehicle
    end

    pr.passenger_record_details.build :location_name => vehicle.route.start_location.name + "站外", :direction => "go"
    vehicle.route.paths_passed.each do |pp|
      pr.passenger_record_details.build :location_name => pp, :direction => "go"
    end

    pr.passenger_record_details.build :location_name => vehicle.route.reverse_route.start_location.name + "站外", :direction => "back"
    vehicle.route.paths_passed.reverse.each do |pp|
      pr.passenger_record_details.build :location_name => pp, :direction => "back"
    end

    pr.save!
    pr
  end

  def update_total_count
    self.update_attribute :total_count, self.passenger_record_details.inject(0) {|s, r| s += (r.passenger_count || 0); s}
  end
end

