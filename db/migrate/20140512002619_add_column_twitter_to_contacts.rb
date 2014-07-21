class AddColumnTwitterToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :twitter, :string
  end
end
