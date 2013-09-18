# -*- encoding : utf-8 -*-
class HuoyunRoute < ActiveRecord::Base
  attr_accessible :daohuo_time, :destription, :fahuo_time, :form_huozhan_id, :to_huozhan_id

  belongs_to :from_huozhan, :class_name => "Huozhan", :foreign_key => "from_huozhan_id"
  belongs_to :to_huozhan, :class_name => "Huozhan", :foreign_key => "to_huozhan_id"

 
  validate :from_huozhan_not_same_as_to_huozhan

  def start_huozhan_not_same_as_end_huozhan
    if self.from_huozhan_id == self.to_huozhan_id
      self.errors.add(:to_huozhan_id, "不能与始发站相同")
    end
  end
end
