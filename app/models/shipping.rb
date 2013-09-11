class Shipping < ActiveRecord::Base
  attr_accessible :baozhi_needed, :daishouhuokuan_fee, :fee, :huowu_amount, :huowu_baozhi, :huowu_beizhu, :huowu_cost, :huowu_danwei, :huowu_name, :is_daishouhuokuan, :is_paid, :receiver_address, :receiver_name, :receiver_tel, :sender_name, :sender_tel, :status
end
