class CreateIncidencia < ActiveRecord::Migration[5.0]
  def change
    create_table :incidencia do |t|
      t.integer :EmpresaId
      t.integer :RutaId
      t.text :Comentario
      t.boolean :Compartir
      t.integer :RedSocial
      t.text :PostRed

      t.timestamps
    end
  end
end
