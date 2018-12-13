class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @burger_places = BurgerPlace.where.not(latitude: nil, longitude: nil)

    @markers = @burger_places.map do |flat|
      {
        lng: flat.longitude,
        lat: flat.latitude
      }
    end
  end
end
