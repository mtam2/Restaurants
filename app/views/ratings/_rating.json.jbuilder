json.extract! rating, :id, :user_id, :restaurant_id, :rating, :date, :created_at, :updated_at
json.url rating_url(rating, format: :json)