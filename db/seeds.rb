# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

User.create :name => "杨成金", :login => "admin", :password => "adminadmin", :email => "adminadmin@admin.com"
User.create :name => "呼市管理员", :login => "hushi_admin", :password => "adminadmin", :email => "hushia_dmin@admin.com"
