class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :nombre
      t.string :jugador
      t.integer :reputacion
      t.integer :nivel
      t.boolean :sexo
      t.integer :cuerpo
      t.integer :mente
      t.integer :movimiento
      t.string :personaje
      t.string :subclase
      t.text :bio
      t.integer :oro

      t.timestamps
    end
  end
end
