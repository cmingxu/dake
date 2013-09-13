class AddHuozhanIdToShipping < ActiveRecord::Migration
  def change
    add_column :shippings, :from_huozhan_id, :integer
    add_column :shippings, :to_huozhan_id, :integer
  end
end
