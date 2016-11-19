json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :user_id, :product_id, :fulfilled
  json.url transaction_url(transaction, format: :json)
end
