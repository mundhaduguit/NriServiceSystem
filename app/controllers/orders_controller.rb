class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:customer_id, :service_id, :employee_id, :service_date, :relative_id, :state, :user_comment, :employee_comment, :order_rating, :feedback)
    end
end

