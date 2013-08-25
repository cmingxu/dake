# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable#, :registerable,
         #:recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :mobile, :login
  validates :name,  :presence => { :message => "姓名不能为空" }
  validates :login,  :presence => { :message => "登陆账号不能空" }
  validates :mobile, :presence => { :message => "手机号码不能为空" }
  # attr_accessible :title, :body
end
