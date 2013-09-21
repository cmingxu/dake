class AddColumnToCargo < ActiveRecord::Migration
  def change
    add_column :cargos, :siji, :string
    add_column :cargos, :tel, :string
    add_column :cargos, :paizhao, :string
  end
end
