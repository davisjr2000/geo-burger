class AddDisplayNameToBurgerPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :burger_places, :display_name, :string
  end
end
