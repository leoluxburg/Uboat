class CreateContactMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_messages do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end
