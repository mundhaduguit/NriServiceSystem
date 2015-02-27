json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :service_id, :employee_id, :service_date, :relative_id, :state, :user_comment, :employee_comment, :order_rating, :feedback
  json.url order_url(order, format: :json)
end
