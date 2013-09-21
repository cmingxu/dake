class AddCargoIdToShippings < ActiveRecord::Migration
  def change
    add_column :shippings, :cargo_id, :integer
  end
end
