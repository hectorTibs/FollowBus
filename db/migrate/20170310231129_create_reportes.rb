class CreateReportes < ActiveRecord::Migration[5.0]
  def change
    create_table :reportes do |t|
      t.integer :empresaid
      t.integer :rutaid
      t.text :comentario
      t.boolean :compartir
      t.integer :redsocial
      t.text :postred

      t.timestamps
    end
  end
end
