class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :fuzeren
      t.string :fuzeren_mobile
      t.string :fuzeren_address

      t.timestamps
    end
  end
end
