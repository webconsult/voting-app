class CreateNominees < ActiveRecord::Migration
  def change
    create_table :nominees do |t|
      t.string :company_name
      t.string :website
      t.text :description
      t.string :country
      t.integer :category_id
      t.integer :company_id

      t.timestamps
    end
  end
end
