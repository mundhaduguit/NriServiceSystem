class FrontsController < InheritedResources::Base

  private

    def front_params
      params.require(:front).permit()
    end
end

