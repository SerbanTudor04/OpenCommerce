json.extract! admin_user, :id, :username, :hashed_password, :email, :created_at, :updated_at
json.url admin_user_url(admin_user, format: :json)
