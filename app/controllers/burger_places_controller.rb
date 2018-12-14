class BurgerPlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @burger_places = BurgerPlace.where.not(latitude: nil, longitude: nil)

    @markers = @burger_places.map do |flat|
      {
        lng: flat.longitude,
        lat: flat.latitude
      }
    end
  end

  def show
    @burger_place = BurgerPlace.find_by(display_name: params[:display_name])
  end
end
