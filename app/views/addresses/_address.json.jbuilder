json.extract! address, :id, :city, :country, :street, :latitude, :longitude, :profile_id, :created_at, :updated_at
json.url address_url(address, format: :json)
