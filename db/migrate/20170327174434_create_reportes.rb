class CreateReportes < ActiveRecord::Migration[5.0]
  def change
    create_table :reportes do |t|
      t.string :nombre
      t.integer :edad
      t.integer :sexo
      t.date :hora
      t.integer :rutaid
      t.string :descripcion
      t.integer :userid

      t.timestamps
    end
  end
end
