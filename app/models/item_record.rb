# -*- encoding : utf-8 -*-
class ItemRecord < ActiveRecord::Base
  USAGE_TYPE = %w(in out)
  attr_accessible :item_id, :num, :price, :reason, :usage_type, :user_id, :vehicle_id

  validates :num, :presence => { :message => "不能空" }

  scope :in, :where => "usage_type = 'in'"
  scope :out, :where => "usage_type = 'out'"

  belongs_to :item
  belongs_to :user
  belongs_to :vehicle

  def usage_type_in_word
    self.usage_type == "in" ? "入库" : "出库"
  end
end
