# -*- encoding : utf-8 -*-
class CreateHuozhans < ActiveRecord::Migration
  def change
    create_table :huozhans do |t|
      t.string :huozhan_name
      t.string :huozhan_address
      t.string :huozhan_tel

      t.timestamps
    end
  end
end
