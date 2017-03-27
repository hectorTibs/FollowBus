json.extract! reporte, :id, :nombre, :edad, :sexo, :hora, :rutaid, :descripcion, :userid, :created_at, :updated_at
json.url reporte_url(reporte, format: :json)
