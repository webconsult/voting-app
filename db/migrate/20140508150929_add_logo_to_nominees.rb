class AddLogoToNominees < ActiveRecord::Migration
  def change
    add_column :nominees, :logo, :string
  end
end
