class CreatePassengerRecords < ActiveRecord::Migration
  def change
    create_table :passenger_records do |t|
      t.date :record_date
      t.integer :vehicle_id
      t.string :created_by
      t.integer :total_price

      t.timestamps
    end
  end
end
