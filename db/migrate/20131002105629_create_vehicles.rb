# -*- encoding : utf-8 -*-
class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :paizhao
      t.string :xinghao
      t.string :leixing

      t.timestamps
    end
  end
end
