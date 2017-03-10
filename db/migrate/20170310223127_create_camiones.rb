class CreateCamiones < ActiveRecord::Migration[5.0]
  def change
    create_table :camiones do |t|
      t.string :clave
      t.string :nombre
      t.string :tiporuta
      t.string :municipioinicio
      t.string :municipiofin

      t.timestamps
    end
  end
end
