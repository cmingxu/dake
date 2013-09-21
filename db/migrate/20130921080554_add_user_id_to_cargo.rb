class AddUserIdToCargo < ActiveRecord::Migration
  def change
    add_column :cargos, :user_id, :integer
  end
end
