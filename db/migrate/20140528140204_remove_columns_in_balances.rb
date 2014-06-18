# -*- encoding : utf-8 -*-
class RemoveColumnsInBalances < ActiveRecord::Migration
  def up
    remove_column :balances, :amount
    remove_column :balances, :reason
    remove_column :balances, :detail_reason
  end

  def down
    add_column :balances, :amount, :integer
    add_column :balances, :reason, :string
    add_column :balances, :detail_reason, :string
  end
end
