# -*- encoding : utf-8 -*-
class CreateBalanceDetails < ActiveRecord::Migration
  def change
    create_table :balance_details do |t|
      t.integer :amount
      t.integer :balance_id
      t.string :reason
      t.string :detail_reason
      t.text :desc

      t.timestamps
    end
  end
end
