json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :barbershop_id
  json.url product_url(product, format: :json)
end
