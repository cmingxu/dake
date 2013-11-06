# -*- encoding : utf-8 -*-
class Shipping < ActiveRecord::Base
  DANWEI = %w{箱 包 个 吨 袋 件}.freeze
  STATUS  = %w{}.freeze
  attr_accessible :baozhi_needed, :daishouhuokuan_fee, :fee, :huowu_amount, :huowu_baozhi, :huowu_beizhu, :huowu_cost, :huowu_danwei, :huowu_name, :is_daishouhuokuan, :is_paid, :receiver_address, :receiver_name, :receiver_tel, :sender_name, :sender_tel, :status, :from_huozhan_id, :to_huozhan_id, :baozhi_fee, :daishouhuokuan_amount, :is_daishouhuokuan_shouqu

  belongs_to :from_huozhan, :class_name => "Huozhan", :foreign_key => "from_huozhan_id"
  belongs_to :to_huozhan, :class_name => "Huozhan", :foreign_key => "to_huozhan_id"
  belongs_to :user #录入人
  has_many :shipping_cargos
  has_many :cargos, :through => :shippings_cargos

  validates :huowu_name, :presence => { :message => "发货物品不能为空" }
  validates :huowu_amount, :presence => { :message => "物品数量不能为空" }
  validates :huowu_amount, :numericality => { :message => "货物数量需为数字" }
  validates :receiver_name, :presence => { :message => "收货人不能为空" }
  validates :receiver_tel, :presence => { :message => "收货人电话不能为空" }
  validates :sender_name, :presence => { :message => "发货人姓名不能为空" }
  validates :sender_tel, :presence => { :message => "发货人联系方式不能为空" }
  validates :fee, :presence => { :message => "物流费用不能为空" }  
  validates :fee, :numericality => { :message => "物流费用需为数字" }
  validates :huowu_baozhi, :presence => { :message => "货物保值不能为空" }
  validates :huowu_baozhi, :numericality => { :message => "货物保值需为数字" }
  validates :baozhi_fee, :presence => { :message => "货物保费不能为空" }
  validates :baozhi_fee, :numericality => { :message => "货物保费需为数字" }
  validates :daishouhuokuan_amount, :presence => { :message => "代收货款不能为空" }
  validates :daishouhuokuan_amount, :numericality => { :message => "代收货款需要为数字" }
  validates :daishouhuokuan_fee, :presence => { :message => "代收货款费用不能为空" }
  validates :daishouhuokuan_fee, :numericality => { :message => "代收货款费用需要数字" }


  scope :with_created_at_between, lambda {|start, end_time|
    where(["created_at > ? AND created_at < ?", start, end_time]) } 
  scope :with_from_huozhan, lambda { |huozhan_name| where(:from_huozhan_name => huozhan_name) }
  scope :with_to_huozhan, lambda { |huozhan_name| where(:to_huozhan_name => huozhan_name) }
  scope :with_status, lambda { |status| where(:status => status) }
  scope :with_sender_name, lambda { |sender_name| where(:sender_name => sender_name) }
  scope :with_sender_tel, lambda { |sender_tel| where(:sender_tel => sender_tel) }
  scope :with_receiver_name, lambda { |receiver_name| where(:receiver_name => receiver_name) }
  scope :with_receiver_tel, lambda { |receiver_tel| where(:receiver_tel => receiver_tel) }

  before_create do
    from_huozhan_shipping_count = self.from_huozhan.ship_outs.count
    self.serial_num = sprintf "%03d%03d%08d" % [self.from_huozhan_id, self.to_huozhan_id, from_huozhan_shipping_count]
  end

  before_save do |s|
    s.from_huozhan_name = s.from_huozhan.huozhan_name
    s.to_huozhan_name   = s.to_huozhan.huozhan_name
  end


  # 收件
  state_machine :status, :initial => :received do
    # 发货
    event :ship do
      transition :received => :shipped 
    end

    # 到货 / 收货
    event :reach do
      transition :shipped => :reached
    end

    # 发件
    event :deliver do
      transition :reached => :delivered
    end

    # 代收货款
    event :shouhuokuan do
      transition :delivered => :yishouhuokuan
    end

    # 取货款
    event :quhuokuan do
      transition :yishouhuokuan => :huokuanyiqu
    end
  end
end
