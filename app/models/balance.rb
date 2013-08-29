# -*- encoding : utf-8 -*-
class Balance < ActiveRecord::Base
  attr_accessible :amount, :desc, :detail_reason, :location_id, :paizhao, :reason, :user_id

  belongs_to :location
  belongs_to :user
  belongs_to :route
end
