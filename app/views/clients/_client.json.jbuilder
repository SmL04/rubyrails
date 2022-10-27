json.extract! client, :id, :name, :librarian_id, :book_id, :created_at, :updated_at
json.url client_url(client, format: :json)
