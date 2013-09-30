class CreateObjetos < ActiveRecord::Migration
  def change
    create_table :objetos do |t|
      t.string :nombre
      t.string :tipo
      t.text :descripcion

      t.timestamps
    end
  end
end
