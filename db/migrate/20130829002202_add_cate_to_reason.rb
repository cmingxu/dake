# -*- encoding : utf-8 -*-
class AddCateToReason < ActiveRecord::Migration
  def change
    add_column :reasons, :cate, :string
  end
end
