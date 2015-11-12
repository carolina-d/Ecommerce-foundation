json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :code, :stock
  json.url product_url(product, format: :json)
end
