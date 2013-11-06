# -*- encoding : utf-8 -*-
class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :age
      t.string :phone
      t.string :address
      t.string :salary
      t.string :start_date
      t.string :end_date
      t.text :description

      t.timestamps
    end
  end
end
