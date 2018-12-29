class AddPriceToBurgerPlace < ActiveRecord::Migration[5.2]
  def change
    add_column :burger_places, :price, :int
  end
end
