class AddBaozhiFeeToShipping < ActiveRecord::Migration
  def change
    add_column :shippings, :baozhi_fee, :integer
  end
end
