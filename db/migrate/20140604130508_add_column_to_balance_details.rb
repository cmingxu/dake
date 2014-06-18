# -*- encoding : utf-8 -*-
class AddColumnToBalanceDetails < ActiveRecord::Migration
  def change
    add_column :balance_details, :paizhao, :string
    add_column :balance_details, :cate, :string
    add_column :balance_details, :location_id, :integer
    add_column :balance_details, :route_id, :integer
    add_column :balance_details, :balance_date, :date
  end
end
