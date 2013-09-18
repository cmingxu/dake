# -*- encoding : utf-8 -*-
class CreateHuoyunRoutes < ActiveRecord::Migration
  def change
    create_table :huoyun_routes do |t|
      t.integer :from_huozhan_id
      t.string :to_huozhan_id
      t.string :fahuo_time
      t.string :daohuo_time
      t.text :destription

      t.timestamps
    end
  end
end
