json.extract! user, :id, :name, :password, :height, :login_id, :remember, :created_at, :updated_at
json.url user_url(user, format: :json)