# -*- encoding : utf-8 -*-
class CreateReminds < ActiveRecord::Migration
  def change
    create_table :reminds do |t|
      t.string :name
      t.integer :repeating
      t.integer :remind

      t.timestamps
    end
  end
end
