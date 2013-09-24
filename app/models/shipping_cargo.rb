class ShippingCargo < ActiveRecord::Base
  attr_accessible :cargo_id, :shipping_id

  belongs_to :shipping
  belongs_to :cargo

end
