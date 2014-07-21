class AddBioToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :bio, :string
  end
end
