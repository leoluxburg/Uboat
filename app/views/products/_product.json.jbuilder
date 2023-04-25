json.extract! product, :id, :titulo, :categoria, :subcategoria, :provincia, :distrito, :corregimiento, :sector, :marina, :precio, :descripcion, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
