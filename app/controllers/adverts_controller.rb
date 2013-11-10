class AdvertsController < ApplicationController
  def advert_params
    params.require(:advert).permit(:name, :external_link, :description, :title, :photo)
  end
end
