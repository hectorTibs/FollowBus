class CreateEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :empresas do |t|
      t.string :Clave
      t.string :Nombre
      t.string :Localidad

      t.timestamps
    end
  end
end
