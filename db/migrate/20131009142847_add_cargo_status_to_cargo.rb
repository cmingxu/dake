# -*- encoding : utf-8 -*-
class AddCargoStatusToCargo < ActiveRecord::Migration
  def change
    add_column :cargos, :cargo_status, :string
  end
end
