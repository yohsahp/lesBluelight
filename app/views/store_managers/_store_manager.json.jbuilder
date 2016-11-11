json.extract! store_manager, :id, :email, :phone;string, :name, :location_id, :created_at, :updated_at
json.url store_manager_url(store_manager, format: :json)