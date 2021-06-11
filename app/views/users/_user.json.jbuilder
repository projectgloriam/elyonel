json.extract! user, :id, :login, :full_name, :role_id, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
