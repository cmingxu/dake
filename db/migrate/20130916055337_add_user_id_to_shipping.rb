class AddUserIdToShipping < ActiveRecord::Migration
  def change
    add_column :shippings, :user_id, :integer
  end
end
