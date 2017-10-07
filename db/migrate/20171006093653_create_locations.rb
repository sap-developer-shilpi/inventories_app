class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :loc_code
      t.string :loc_name
      t.string :primany_representative
      t.integer :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
