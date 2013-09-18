# -*- encoding : utf-8 -*-
class AddBaozhiFeeToShipping < ActiveRecord::Migration
  def change
    add_column :shippings, :baozhi_fee, :integer
  end
end
