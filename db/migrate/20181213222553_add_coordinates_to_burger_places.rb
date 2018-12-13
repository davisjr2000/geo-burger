class AddCoordinatesToBurgerPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :burger_places, :latitude, :float
    add_column :burger_places, :longitude, :float
  end
end
