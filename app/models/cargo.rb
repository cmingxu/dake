class Cargo < ActiveRecord::Base
  attr_accessible :from_huozhan_id, :from_huozhan_name, :huoyun_route_id, :serial_num, :to_huozhan_id, :to_huozhan_name
  attr_accessible :paizhao, :siji, :tel, :shipping_ids

  has_many :shipping_cargos
  has_many :shippings, :through => :shipping_cargos
  belongs_to :user
  belongs_to :huoyun_route
  belongs_to :from_huozhan, :foreign_key => "from_huozhan_id", :class_name => "Huozhan"
  belongs_to :to_huozhan, :foreign_key => "to_huozhan_id", :class_name => "Huozhan"

  def self.next_serial_num from_huozhan_id
     "%03d%08d" % [from_huozhan_id, Cargo.count]
  end

  def shipping_ids=(ids)
    self.shippings = Shipping.find ids
  end

  before_save do
    self.from_huozhan = self.huoyun_route.from_huozhan
    self.to_huozhan   = self.huoyun_route.to_huozhan
    self.from_huozhan_name = self.huoyun_route.from_huozhan.huozhan_name
    self.to_huozhan_name   = self.huoyun_route.to_huozhan.huozhan_name
  end
end
