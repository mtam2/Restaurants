json.extract! restaurant, :id, :restaurant_name, :phone, :address, :menu, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)