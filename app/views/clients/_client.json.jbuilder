json.extract! client, :id, :name, :location, :telephone, :email, :created_at, :updated_at
json.url client_url(client, format: :json)
