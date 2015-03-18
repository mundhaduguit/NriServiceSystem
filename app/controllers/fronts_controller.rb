class FrontsController < InheritedResources::Base
layout false
  
  def index
    @user_session = UserSession.new
  end
  
  private

    def front_params
      params.require(:front).permit()
    end
end

