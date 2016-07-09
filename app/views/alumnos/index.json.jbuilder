json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :nombre, :grupo_id
  json.url alumno_url(alumno, format: :json)
end
