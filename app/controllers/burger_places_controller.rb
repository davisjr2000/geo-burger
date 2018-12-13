class BurgerPlacesController < ApplicationController
  def index
    @burger_places = BurgerPlace.where.not(latitude: nil, longitude: nil)

    @markers = @burger_places.map do |flat|
      {
        lng: flat.longitude,
        lat: flat.latitude
      }
    end
  end
end
