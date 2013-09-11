class CreateShippings < ActiveRecord::Migration
  def change
    create_table :shippings do |t|
      t.string :sender_name
      t.string :sender_tel
      t.string :receiver_name
      t.string :receiver_tel
      t.string :receiver_address
      t.integer :fee
      t.string :huowu_name
      t.string :huowu_danwei
      t.string :huowu_amount
      t.string :huowu_beizhu
      t.string :status
      t.boolean :is_paid
      t.boolean :is_daishouhuokuan
      t.integer :huowu_cost
      t.integer :huowu_baozhi
      t.string :baozhi_needed
      t.integer :daishouhuokuan_fee

      t.timestamps
    end
  end
end
