class ServicesController < ApplicationController

def index
  @services = Service.all
  @order = Order.new
end

def order_params
  params.require(:service).permit(:service_date,:user_d);
end


end