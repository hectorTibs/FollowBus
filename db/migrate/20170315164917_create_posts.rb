class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :reporteid
      t.string :comentario
      t.string :redsocial

      t.timestamps
    end
  end
end
