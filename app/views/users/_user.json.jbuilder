json.extract! user, :id, :specialname, :created_at, :updated_at
json.url user_url(user, format: :json)