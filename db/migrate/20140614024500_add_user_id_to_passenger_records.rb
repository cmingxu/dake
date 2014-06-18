# -*- encoding : utf-8 -*-
class AddUserIdToPassengerRecords < ActiveRecord::Migration
  def change
    add_column :passenger_records, :user_id, :integer
  end
end
