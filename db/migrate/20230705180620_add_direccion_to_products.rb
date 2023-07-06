class AddDireccionToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :direccion, :string
  end
end
