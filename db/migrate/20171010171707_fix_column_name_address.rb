class FixColumnNameAddress < ActiveRecord::Migration
  def change
    rename_column :addresses, :house_num, :building_num
  end
end
