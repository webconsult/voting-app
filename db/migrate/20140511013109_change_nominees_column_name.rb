class ChangeNomineesColumnName < ActiveRecord::Migration
  def change
    rename_column :nominees, :company_name, :name
  end
end
