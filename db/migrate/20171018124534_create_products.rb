class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :
      t.string :manufacturer
      t.string :
      t.string :price
      t.integer :
      t.string :order_Email
      t.string :

      t.timestamps null: false
    end
  end
end
