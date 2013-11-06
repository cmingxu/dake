# -*- encoding : utf-8 -*-
class AddDutyToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :duty, :string
  end
end
