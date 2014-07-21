class ChangeBioFormatInContacts < ActiveRecord::Migration
  def change
    change_column :contacts, :bio, :text
  end
end
