class DaishouhuokuanMigration < ActiveRecord::Migration
  def up
    remove_column :shippings, :is_daishouhuokuan
    add_column :shippings, :is_daishouhuokuan_fee_paid, :boolean
  end

  def down
    add_column :shippings, :is_daishouhuokuan, :boolean
    remove_column :shippings, :is_daishouhuokuan_fee_paid
  end
end
