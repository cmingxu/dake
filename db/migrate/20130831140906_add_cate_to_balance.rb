# -*- encoding : utf-8 -*-
class AddCateToBalance < ActiveRecord::Migration
  def change
    add_column :balances, :cate, :string
  end
end
