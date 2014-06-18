class AddDirectionToPassengerRecordDetails < ActiveRecord::Migration
  def change
    add_column :passenger_record_details, :direction, :string
  end
end
