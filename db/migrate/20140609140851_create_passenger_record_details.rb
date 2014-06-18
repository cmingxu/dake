# -*- encoding : utf-8 -*-
class CreatePassengerRecordDetails < ActiveRecord::Migration
  def change
    create_table :passenger_record_details do |t|
      t.integer :passenger_record_id
      t.integer :passenger_count
      t.integer :total_price
      t.integer :location_id
      t.string :location_name

      t.timestamps
    end
  end
end
