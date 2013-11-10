class HotelsController < InheritedResources::Base
  def hotel_params
    params.require(:hotel).permit(:name, :address, :description, :location, :state_id )
  end
end
