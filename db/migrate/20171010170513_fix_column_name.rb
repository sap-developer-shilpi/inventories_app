class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :locations, :primany_representative, :primary_representative
  end
end
