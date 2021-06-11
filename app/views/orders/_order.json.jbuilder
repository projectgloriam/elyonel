json.extract! order, :id, :price, :user_id, :client_id, :complete, :created_at, :updated_at
json.url order_url(order, format: :json)
