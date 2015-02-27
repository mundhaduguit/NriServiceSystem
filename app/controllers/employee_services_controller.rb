class EmployeeServicesController < InheritedResources::Base

  private

    def employee_service_params
      params.require(:employee_service).permit(:employee_id, :service_id)
    end
end

