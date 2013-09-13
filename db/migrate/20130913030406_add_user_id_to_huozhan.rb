class AddUserIdToHuozhan < ActiveRecord::Migration
  def change
    add_column :huozhans, :user_id, :integer
  end
end
