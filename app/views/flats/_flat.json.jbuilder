json.extract! flat, :id, :name, :address, :description, :occupancy, :price, :image_url, :user_id, :created_at, :updated_at
json.url flat_url(flat, format: :json)
