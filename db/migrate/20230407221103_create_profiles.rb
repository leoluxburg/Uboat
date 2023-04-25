class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :nombre_completo
      t.date :fecha_de_nacimiento
      t.string :nacionalidad
      t.boolean :experiencia
      t.string :telefono
      t.string :nombre_emergencia
      t.string :telefono_emergencia
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
