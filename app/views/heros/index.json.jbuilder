json.array!(@heros) do |hero|
  json.extract! hero, :nombre, :jugador, :reputacion, :nivel, :sexo, :cuerpo, :mente, :movimiento, :personaje, :subclase, :bio, :oro
  json.url hero_url(hero, format: :json)
end
