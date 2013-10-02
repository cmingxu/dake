# -*- encoding : utf-8 -*-
class AddColumsToHuoyunRoutes < ActiveRecord::Migration
  def change
    add_column :huoyun_routes, :paizhao, :string
    add_column :huoyun_routes, :sicheng, :string
    add_column :huoyun_routes, :tel, :string
  end
end
