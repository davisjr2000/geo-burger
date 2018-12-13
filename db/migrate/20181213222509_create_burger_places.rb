class CreateBurgerPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :burger_places do |t|
      t.string :name
      t.string :address
      t.float :rating

      t.timestamps
    end
  end
end
