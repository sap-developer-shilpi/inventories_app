class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :house_num
      t.string :street
      t.integer :pin_code
      t.string :city

      t.timestamps null: false
    end
  end
end
