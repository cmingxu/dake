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
hushi   = User.create! :name => "呼市管理员", :login => "hushi_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"
chifeng = User.create! :name => "赤峰管理员", :login => "chifeng_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"
aohan   = User.create! :name => "敖汉管理员", :login => "aohan_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"
datong  = User.create! :name => "大同管理员", :login => "datong_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"
beijing = User.create! :name => "北京管理员", :login => "beijing_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"

naman   = User.create! :name => "奈曼管理员", :login => "naman_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"
chengde = User.create! :name => "承德管理员", :login => "chengde_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"
daban   = User.create! :name => "大阪管理员", :login => "daban_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"
tianshan= User.create! :name => "天山管理员", :login => "tianshan_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"
changsheng= User.create! :name => "长胜管理员", :login => "changsheng_admin", :password => "adminadmin", :password_confirmation => "adminadmin", :email => "hushia_dmin@admin.com", :roles => ["agent"], :mobile => "13812345678"

location1 = Location.create :name => "赤峰", :fuzeren => "负责人1", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东", :fuzeren => chifeng.id
location2 = Location.create :name => "北京", :fuzeren => "负责人2", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东", :fuzeren => beijing.id
location3 = Location.create :name => "呼市", :fuzeren => "负责人3", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东", :fuzeren => hushi.id
location4 = Location.create :name => "敖汉", :fuzeren => "负责人4", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东", :fuzeren => aohan.id
location5 = Location.create :name => "大同", :fuzeren => "负责人5", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东", :fuzeren => datong.id
location6 = Location.create :name => "奈曼", :fuzeren => "负责人6", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东", :fuzeren => naman.id
location7 = Location.create :name => "承德", :fuzeren => "负责人7", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东", :fuzeren => chengde.id
location8 = Location.create :name => "大阪", :fuzeren => "负责人8", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东", :fuzeren => daban.id
location9 = Location.create :name => "天山", :fuzeren => "负责人9", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东", :fuzeren => tianshan.id
location10 = Location.create :name => "长胜", :fuzeren => "负责人10", :fuzeren_mobile => "13111111111", :fuzeren_address => "赤峰汽车客运站东", :fuzeren => changsheng.id


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


Reason.create!(:cate => "in", :reason => "结算单")
Reason.create!(:cate => "in", :reason => "运货")
Reason.create!(:cate => "in", :reason => "散客")

Reason.create!(:cate => "out", :reason => "燃料", :details => "")
Reason.create!(:cate => "out", :reason => "过桥费", :details => "")
Reason.create!(:cate => "out", :reason => "机齿油", :details => "")
Reason.create!(:cate => "out", :reason => "轮胎", :details => "")
Reason.create!(:cate => "out", :reason => "罚款", :details => "")
Reason.create!(:cate => "out", :reason => "住宿费", :details => "")
Reason.create!(:cate => "out", :reason => "服务费", :details => "")
Reason.create!(:cate => "out", :reason => "线路费", :details => "")
Reason.create!(:cate => "out", :reason => "保险", :details => "")
Reason.create!(:cate => "out", :reason => "手机费", :details => "")
Reason.create!(:cate => "out", :reason => "其他", :details => "")
Reason.create!(:cate => "out", :reason => "维修", :details => "车轮部件,空调部件,油类部件,箱类部件,灯镜部件")
Reason.create!(:cate => "out", :reason => "备品", :details => "车座套,笤帚,食品袋")

def rand_balance
   b = Balance.new
   b.amount = 10000 * rand()
   u = User.all.select{|u| u.agent? }.sample
   l = u.location
   r = u.location.routes.sample
   return unless r
   reason = Reason.out.all.sample

   b.user = u
   b.location = l
   b.route = r
   b.paizhao = r.paizhao
   b.reason = reason.reason
   b.detail_reason = reason.details.split(",").sample if reason.details
   b.cate = "out"
   b.created_at = Time.now - 3600 * 24 * 365 * rand()
   b.save!
end

1000.times do
  rand_balance
end

######################

bj = Huozhan.create :huozhan_name => "北京", :huozhan_address => "北京六里桥",     :huozhan_tel => "13612344321"
bj.user =  beijing
bj.save
Huozhan.create :huozhan_name => "赤峰", :huozhan_address => "赤峰汽车站附近", :huozhan_tel => "13612344321"
Huozhan.create :huozhan_name => "敖汉", :huozhan_address => "敖汉汽车站附近", :huozhan_tel => "13612344321"
Huozhan.create :huozhan_name => "通辽", :huozhan_address => "通辽汽车站附近", :huozhan_tel => "13612344321"
Huozhan.create :huozhan_name => "大阪", :huozhan_address => "大阪汽车站附近", :huozhan_tel => "13612344321"
