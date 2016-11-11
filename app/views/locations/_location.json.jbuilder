json.extract! location, :id, :store_number, :store_name, :mall, :address, :city, :state, :zip, :created_at, :updated_at
json.url location_url(location, format: :json)