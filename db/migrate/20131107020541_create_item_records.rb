# -*- encoding : utf-8 -*-
class CreateItemRecords < ActiveRecord::Migration
  def change
    create_table :item_records do |t|
      t.integer :item_id
      t.integer :user_id
      t.string :num
      t.string :usage_type
      t.integer :price
      t.string :vehicle_id
      t.text :reason

      t.timestamps
    end
  end
end
