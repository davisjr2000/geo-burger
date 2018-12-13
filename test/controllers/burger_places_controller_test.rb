require 'test_helper'

class BurgerPlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get burger_places_index_url
    assert_response :success
  end

end
