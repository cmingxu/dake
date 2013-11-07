# -*- encoding : utf-8 -*-
class AddUnitToItem < ActiveRecord::Migration
  def change
    add_column :items, :unit, :string
  end
end
