json.array!(@objetos) do |objeto|
  json.extract! objeto, :nombre, :tipo, :descripcion
  json.url objeto_url(objeto, format: :json)
end
