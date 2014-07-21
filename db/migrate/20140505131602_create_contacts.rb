class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :position
      t.string :email
      t.string :linkedin
      t.integer :nominee_id

      t.timestamps
    end
  end
end
