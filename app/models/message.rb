# -*- encoding : utf-8 -*-
class Message < ActiveRecord::Base
  attr_accessible :attach1, :attach2, :attach3, :attach4, :attach5, :content, :created_by, :title

  has_many :message_users

  mount_uploader :attach1, AttachUploader
  mount_uploader :attach2, AttachUploader
  mount_uploader :attach3, AttachUploader
  mount_uploader :attach4, AttachUploader
  mount_uploader :attach5, AttachUploader
  
  after_create do 
    User.all.each do |u|
      next if u.name == self.created_by
      MessageUser.create :message_id => self.id, :user_id => u.id, :read => false
    end
  end
end
