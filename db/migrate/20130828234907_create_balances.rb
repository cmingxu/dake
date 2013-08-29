# -*- encoding : utf-8 -*-
class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.decimal :amount
      t.integer :user_id
      t.string :paizhao
      t.string :location_id
      t.string :reason
      t.string :detail_reason
      t.text :desc

      t.timestamps
    end
  end
end
