json.extract! reservation, :id, :book_id, :librarian_id, :client_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
