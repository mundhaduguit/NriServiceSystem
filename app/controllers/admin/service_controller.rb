class Admin::ServiceController < ApplicationController
def index
  
end
def new 
  @service=Service.new
  
end
def create
   @service = Service.new(service_params)
   if @service.save
   	redirect_to admin_services_path
   else
       redirect_to admin_services_path
   end
end
  def service_params
      params.require(:service).permit(:name, :description, :service_type)
    end
end
