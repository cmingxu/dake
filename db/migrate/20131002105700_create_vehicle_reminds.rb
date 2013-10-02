# -*- encoding : utf-8 -*-
class CreateVehicleReminds < ActiveRecord::Migration
  def change
    create_table :vehicle_reminds do |t|
      t.integer :vehicle_id
      t.integer :remind_id

      t.timestamps
    end
  end
end
