# -*- encoding : utf-8 -*-
class AddUserIdToShipping < ActiveRecord::Migration
  def change
    add_column :shippings, :user_id, :integer
  end
end
