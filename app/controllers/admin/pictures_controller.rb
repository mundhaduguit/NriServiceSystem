class Admin::PicturesController < ApplicationController
def new
    @picture=Picture.new
  end
  def create
    if Picture.create(picture_params)
      
    end
  end
  private

    def picture_params
      params.require(:picture).permit(:avatar)
    end
end

