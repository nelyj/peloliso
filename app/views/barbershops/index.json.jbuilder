json.array!(@barbershops) do |barbershop|
  json.extract! barbershop, :id, :name, :address, :description, :user_id
  json.url barbershop_url(barbershop, format: :json)
end
