json.extract! product, :id, :name, :type, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
