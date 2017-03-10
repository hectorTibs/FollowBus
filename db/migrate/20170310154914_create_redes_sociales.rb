class CreateRedesSociales < ActiveRecord::Migration[5.0]
  def change
    create_table :redes_sociales do |t|
      t.string :Clave
      t.string :Nombre

      t.timestamps
    end
  end
end
