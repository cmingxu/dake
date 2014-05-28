# -*- encoding : utf-8 -*-
class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.text :title
      t.integer :created_by
      t.string :attach1
      t.string :attach2
      t.string :attach3
      t.string :attach4
      t.string :attach5

      t.timestamps
    end
  end
end
