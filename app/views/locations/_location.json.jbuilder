json.extract! location, :id, :street_address, :province, :country, :lat, :long, :created_at, :updated_at
json.url location_url(location, format: :json)
