json.array!(@hotels) do |hotel|
  json.extract! hotel, :name, :address, :location, :state_id, :description
  json.url hotel_url(hotel, format: :json)
end
