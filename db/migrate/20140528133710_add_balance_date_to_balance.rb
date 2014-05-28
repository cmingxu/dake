# -*- encoding : utf-8 -*-
class AddBalanceDateToBalance < ActiveRecord::Migration
  def change
    add_column :balances, :balance_date, :date
  end
end
