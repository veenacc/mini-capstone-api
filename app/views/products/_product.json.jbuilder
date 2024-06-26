#json.extract! product, :id, :created_at, :updated_at
#json.url product_url(product, format: :json)

json.id product.id
json.name product.name
json.price product.price

json.description product.description
json.created_at product.created_at
json.updated_at product.updated_at
json.is_discounted product.is_discounted
json.total product.total
#json.item_count product.item_count
json.supplier_id product.supplier_id
json.images product.images