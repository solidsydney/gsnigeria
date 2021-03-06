class WelcomeController < ApplicationController
  def index
    @states = State.all
    @advert_ids = Advert.all(:select => 'id' ).map( &:id )
    @advert = Advert.find( (1..10).map { @advert_ids.delete_at( @advert_ids.size * rand ) } )

    @shops = Shop.recent.limit(10)
    @ip = request.ip
    @city = request.location.city
    @country = request.location.country

    respond_to do |format|
      format.html
      format.mobile
      format.xml { render :xml => @shops.to_xml }
      format.json { render json: @shops}
    end

  end
end
