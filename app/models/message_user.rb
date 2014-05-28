# -*- encoding : utf-8 -*-
class MessageUser < ActiveRecord::Base
  attr_accessible :message_id, :read, :read_at, :user_id
  belongs_to :user
  belongs_to :message

  scope :readed, -> { where(:read => true)}
  scope :unread, -> { where(:read => false)}

end
