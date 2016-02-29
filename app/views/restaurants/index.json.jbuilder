json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :cuisine, :price_range, :address, :description
  json.url restaurant_url(restaurant, format: :json)
end
