class OrdersController < InheritedResources::Base

  def create
    @order = Order.new(order_params)
    if @order.save
      flash[:notice] = "Service added succesfully"
      redirect_to services_url
    else
      flash[:notice] = "there was some error while adding service"
      redirect_to services_url
    end  
  end



  private

    def order_params
      params.require(:order).permit(:customer_id, :service_id, :employee_id, :service_date, :relative_id, :state, :user_comment, :employee_comment, :order_rating, :feedback,:user_id)
    end
end

