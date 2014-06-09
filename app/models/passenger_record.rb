class PassengerRecord < ActiveRecord::Base
  attr_accessible :record_date, :route_id, :total_price, :created_by
  belongs_to :route

  has_many :passenger_record_details
end
