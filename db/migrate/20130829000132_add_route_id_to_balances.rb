# -*- encoding : utf-8 -*-
class AddRouteIdToBalances < ActiveRecord::Migration
  def change
    add_column :balances, :route_id, :integer
  end
end
