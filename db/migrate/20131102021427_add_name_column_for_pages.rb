# -*- encoding : utf-8 -*-
class AddNameColumnForPages < ActiveRecord::Migration
  def up
    add_column :pages, :name, :string
    add_column :pages, :title, :string
  end

  def down
    remove_column :pages, :name
    remove_column :pages, :title
  end
end
