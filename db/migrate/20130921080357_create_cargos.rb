# -*- encoding : utf-8 -*-
class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :serial_num
      t.integer :from_huozhan_id
      t.integer :to_huozhan_id
      t.string :from_huozhan_name
      t.string :to_huozhan_name
      t.integer :huoyun_route_id

      t.timestamps
    end
  end
end
