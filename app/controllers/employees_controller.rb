class EmployeesController < InheritedResources::Base

  private

    def employee_params
      params.require(:employee).permit(:role_id, :user_id)
    end
end

