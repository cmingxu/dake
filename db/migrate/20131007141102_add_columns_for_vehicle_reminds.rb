class AddColumnsForVehicleReminds < ActiveRecord::Migration
  def change
    add_column :vehicle_reminds, :happend_at, :datetime 
    add_column :vehicle_reminds, :description, :text
  end
end
