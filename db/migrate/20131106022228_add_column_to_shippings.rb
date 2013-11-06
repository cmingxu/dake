class AddColumnToShippings < ActiveRecord::Migration
  def change
    add_column :shippings, :is_daishouhuokuan_shouqu, :boolean
  end
end
