# -*- encoding : utf-8 -*-
class AddSerialNumToShipping < ActiveRecord::Migration
  def change
    add_column :shippings, :serial_num, :string
    add_index :shippings, :serial_num
  end
end
