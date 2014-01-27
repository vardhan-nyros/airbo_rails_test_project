json.array!(@charges) do |charge|
  json.extract! charge, :id, :amount, :paid, :refunded, :customer_id
  json.url charge_url(charge, format: :json)
end
