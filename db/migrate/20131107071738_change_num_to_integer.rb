class ChangeNumToInteger < ActiveRecord::Migration
  def change
    change_column :item_records, :num, :integer
  end
end
