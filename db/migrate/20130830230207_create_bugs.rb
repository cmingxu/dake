# -*- encoding : utf-8 -*-
class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.text :desc

      t.timestamps
    end
  end
end
