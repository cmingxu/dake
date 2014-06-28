# -*- encoding : utf-8 -*-
class Balance < ActiveRecord::Base
  attr_accessible :desc, :location_id, :paizhao, :user_id, :cate, :balance_date, :balance_details_attributes

  scope :in, where(:cate => "in")
  scope :out, where(:cate => "out")
  scope :audited, -> { where(status: 'audited') }
  scope :new_created, -> { where(status: 'new_created') }

  scope :with_location, lambda {|l| where(:location_id => l.id) }
  scope :with_user, lambda {|u| where(:user_id => u.id) }
  scope :with_paizhao, lambda {|paizhao| where(:paizhao => paizhao) }
  scope :with_reason, lambda {|reason| includes(:balance_details).where('balance_detail.reason' => reason) }
  #scope :with_amount_between, lambda {|start, end_amount|
    #where(["amount > ? AND amount < ?", start, end_amount]) } 

  scope :with_issued_between, lambda {|start, end_time|
    where(["balance_date > ? AND balance_date < ?", start, end_time]) } 


  belongs_to :location
  belongs_to :user
  belongs_to :route
  has_many :balance_details

  accepts_nested_attributes_for :balance_details

  before_save do
    self.route = Vehicle.find_by_paizhao(self.paizhao).route
  end

  after_create do
    self.update_column :status, :new_created
  end

  def audited?
    self.status == 'audited' 
  end

  def audit!
    self.status = 'audited'
    self.balance_details.each do |bd|
      bd.status = 'audited'
    end

    save
  end

  def amount
    self.balance_details.collect(&:amount).sum  
  end
end
