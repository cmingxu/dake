# -*- encoding : utf-8 -*-
class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :start_location_id
      t.integer :end_location_id
      t.integer :vehicle_id
      t.string :driver_names
      t.string :mobile
      t.string :start_when
      t.string :end_when
      t.text :paths

      t.timestamps
    end
  end
end
