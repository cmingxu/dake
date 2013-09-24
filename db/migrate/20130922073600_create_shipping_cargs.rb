class CreateShippingCargs < ActiveRecord::Migration
  def change
    create_table :shipping_cargos do |t|
      t.integer :shipping_id
      t.integer :cargo_id

      t.timestamps
    end
  end
end
