json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :owner, :location, :address, :food_type, :drink_type, :description
  json.url restaurant_url(restaurant, format: :json)
end
