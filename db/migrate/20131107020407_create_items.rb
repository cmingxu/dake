# -*- encoding : utf-8 -*-
class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :xinghao
      t.integer :amount

      t.timestamps
    end
  end
end
