# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

User.create! :name => "杨成金", :login => "admin", :password => "adminadmin",
  :password_confirmation => "adminadmin", :email => "adminadmin@admin.com", :roles => ["boss"], :mobile => '13811223212'
User.create! :name => "呼市管理员", :login => "hushi_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"

location1 = Location.create :name => "赤峰", :fuzeren => "负责人1", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东"
location2 = Location.create :name => "北京", :fuzeren => "负责人2", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东"
location3 = Location.create :name => "呼市", :fuzeren => "负责人3", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东"
location4 = Location.create :name => "敖汉", :fuzeren => "负责人4", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东"
location5 = Location.create :name => "大同", :fuzeren => "负责人5", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东"
location6 = Location.create :name => "奈曼", :fuzeren => "负责人6", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东"
location7 = Location.create :name => "承德", :fuzeren => "负责人7", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东"
location8 = Location.create :name => "大阪", :fuzeren => "负责人8", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东"
location9 = Location.create :name => "天山", :fuzeren => "负责人9", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东"
location10 = Location.create :name => "长胜", :fuzeren => "负责人10", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东"

Route.create :start_location_id => location1.id, :end_location_id => location2.id, :paizhao => "京A00213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location1.id, :end_location_id => location3.id, :paizhao => "京A00214", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location1.id, :end_location_id => location4.id, :paizhao => "京A00215", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location1.id, :end_location_id => location5.id, :paizhao => "京A00216", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location1.id, :end_location_id => location6.id, :paizhao => "京A00217", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location1.id, :end_location_id => location7.id, :paizhao => "京A00218", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location1.id, :end_location_id => location8.id, :paizhao => "京A00219", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location1.id, :end_location_id => location9.id, :paizhao => "京A00223", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"

Route.create :start_location_id => location3.id, :end_location_id => location2.id, :paizhao => "京A00233", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location3.id, :end_location_id => location4.id, :paizhao => "京A00243", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location3.id, :end_location_id => location5.id, :paizhao => "京A00253", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location3.id, :end_location_id => location6.id, :paizhao => "京A00263", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location3.id, :end_location_id => location7.id, :paizhao => "京A00273", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location3.id, :end_location_id => location8.id, :paizhao => "京A00213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location3.id, :end_location_id => location9.id, :paizhao => "京A00113", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"

Route.create :start_location_id => location5.id, :end_location_id => location2.id, :paizhao => "京A10213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location5.id, :end_location_id => location3.id, :paizhao => "京A20213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location5.id, :end_location_id => location4.id, :paizhao => "京A30213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location5.id, :end_location_id => location6.id, :paizhao => "京A40213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location5.id, :end_location_id => location7.id, :paizhao => "京A50213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location5.id, :end_location_id => location8.id, :paizhao => "京A60213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location5.id, :end_location_id => location9.id, :paizhao => "京A70213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"

Route.create :start_location_id => location6.id, :end_location_id => location2.id, :paizhao => "京A80213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location6.id, :end_location_id => location3.id, :paizhao => "京A90213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location6.id, :end_location_id => location4.id, :paizhao => "京B00213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location6.id, :end_location_id => location5.id, :paizhao => "京C00213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location6.id, :end_location_id => location7.id, :paizhao => "京E00213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location6.id, :end_location_id => location8.id, :paizhao => "京F00213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
Route.create :start_location_id => location6.id, :end_location_id => location9.id, :paizhao => "京G00213", :driver_names => "张三,李四", :mobile => "13900001234, 13900004321", :start_when => "6.30", :end_when => "16:40", :paths => "赤峰，天义， 平泉，承德", :xinghao => "金龙II"
