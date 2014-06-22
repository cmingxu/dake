class AddCounterForPassengerRecord < ActiveRecord::Migration
  def up
    add_column :passenger_records, :total_count, :integer, :default => 0
  end

  def down
    remove_column :passenger_records, :total_count
  end
end
