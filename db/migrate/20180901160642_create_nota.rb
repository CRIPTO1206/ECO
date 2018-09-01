class CreateNota < ActiveRecord::Migration[5.2]
  def change
    create_table :nota do |t|
      t.string :nombre
      t.string :descripcion
      t.boolean :activo

      t.timestamps
    end
  end
end
