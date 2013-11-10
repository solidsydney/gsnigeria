json.array!(@shops) do |shop|
  json.extract! shop, :shop_owner, :shop_line, :shop_number, :full_address, :shop_contact, :shop_description
  json.url shop_url(shop, format: :json)
end
