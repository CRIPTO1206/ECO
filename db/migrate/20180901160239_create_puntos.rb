class CreatePuntos < ActiveRecord::Migration[5.2]
  def change
    create_table :puntos do |t|
      t.string :nombre
      t.string :direccion
      t.string :comentarios
      t.string :latitud
      t.string :longitud
      t.date :fechaActualizacion

      t.timestamps
    end   
    
  end
end
