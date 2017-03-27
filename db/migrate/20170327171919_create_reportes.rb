class CreateReportes < ActiveRecord::Migration[5.0]
  def change
    create_table :reportes do |t|
      t.string :nombre
      t.int :edad
      t.int :sexo
      t.date :hora
      t.int :rutaid
      t.string :descripcion
      t.int :userid

      t.timestamps
    end
  end
end
