class AddVendedorToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :vendedor, :boolean
  end
end
