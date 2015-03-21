json.array!(@employees) do |employee|
  json.extract! employee, :id, :role_id, :user_id
  json.url employee_url(employee, format: :json)
end
