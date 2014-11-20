json.array!(@staffs) do |staff|
  json.extract! staff, :id, :name, :age, :experience, :specialty, :about, :barbershop_id
  json.url staff_url(staff, format: :json)
end
