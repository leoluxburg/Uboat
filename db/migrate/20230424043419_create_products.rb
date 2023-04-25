class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :titulo
      t.string :categoria
      t.string :subcategoria
      t.string :provincia
      t.string :distrito
      t.string :corregimiento
      t.string :sector
      t.string :marina
      t.float :precio
      t.text :descripcion
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
