# -*- encoding : utf-8 -*-
class AddHuozhanNameToShipping < ActiveRecord::Migration
  def change
    add_column :shippings, :from_huozhan_name, :string
    add_column :shippings, :to_huozhan_name, :string
  end
end
