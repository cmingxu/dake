# -*- encoding : utf-8 -*-
class RemoveCargoIdFromShipping < ActiveRecord::Migration
  def change
    remove_column :shippings, :cargo_id
  end
end
