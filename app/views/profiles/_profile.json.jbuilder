json.extract! profile, :id, :nombre_completo, :fecha_de_nacimiento, :nacionalidad, :experiencia, :telefono, :nombre_emergencia, :telefono_emergencia, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
