json.array!(@products) do |product|
  json.extract! product, :name, :product_model, :description, :condition, :price, :wholesale_discount
  json.url product_url(product, format: :json)
end
