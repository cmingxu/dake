class AddStatusToBalanceAndBalanceDetails < ActiveRecord::Migration
  def change
    add_column :balances, :status, :string
    add_column :balance_details, :status, :string
  end
end
