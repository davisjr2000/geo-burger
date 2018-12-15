class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @burger_places = BurgerPlace.where.not(latitude: nil, longitude: nil)

    @markers = @burger_places.map do |burger_place|
      {
        lng: burger_place.longitude,
        lat: burger_place.latitude,
        infoWindow: { content: render_to_string(partial: "/burger_places/map_window", locals: { burger_place: burger_place }) }
      }
    end
  end
end
