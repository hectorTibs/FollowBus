class CreateRuta < ActiveRecord::Migration[5.0]
  def change
    create_table :ruta do |t|
      t.string :Clave
      t.string :Nombre
      t.string :TipoRuta
      t.string :MunicipioInicio
      t.string :MunicipioFin

      t.timestamps
    end
  end
end
