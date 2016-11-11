json.extract! agency_contact, :id, :name, :phone, :email, :location_id, :created_at, :updated_at
json.url agency_contact_url(agency_contact, format: :json)