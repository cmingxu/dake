# -*- encoding : utf-8 -*-
class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string :reason
      t.text :details

      t.timestamps
    end
  end
end
