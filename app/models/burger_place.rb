class BurgerPlace < ApplicationRecord
  before_save :set_display_name
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def set_display_name
    self.display_name = ("#{self.name.downcase} #{self.address.downcase}").gsub(/[^0-9A-Za-z ]/, '').split(" ").join("-")
  end
end
