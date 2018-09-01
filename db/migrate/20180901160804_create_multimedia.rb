class CreateMultimedia < ActiveRecord::Migration[5.2]
  def change
    create_table :multimedia do |t|
      t.string :alt
      t.string :url
      t.string :tipoMultimedia

      t.timestamps
    end
    
    create_join_table :puntos, :tipos do |t| 
      t.index :punto_id
      t.index :tipo_id
    end
    
  end
end
