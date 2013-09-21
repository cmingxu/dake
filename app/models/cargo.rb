class Cargo < ActiveRecord::Base
  attr_accessible :form_huozhan_id, :from_huozhan_name, :huoyun_route_id, :serial_num, :to_huozhan_id, :to_huozhan_name

  has_many :shippings
  belongs_to :user
  belongs_to :huowu_route
  belongs_to :from_huozhan, :foreign_key => "from_huozhan_id", :class_name => "Huozhan"
  belongs_to :to_huozhan, :foreign_key => "to_huozhan_id", :class_name => "Huozhan"

  def self.next_serial_num from_huozhan_id
     "%03d%08d" % [from_huozhan_id, Cargo.count]
  end
end
