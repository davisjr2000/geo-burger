class BurgerPlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @burger_places = BurgerPlace.where.not(latitude: nil, longitude: nil)

    @markers = @burger_places.map do |burger_place|
      {
        lng: burger_place.longitude,
        lat: burger_place.latitude,
        infoWindow: { content: render_to_string(partial: "/burger_places/map_window", locals: { burger_place: burger_place }) }
      }
    end
  end

  def show
    @burger_place = BurgerPlace.find_by(display_name: params[:display_name])
  end
end
