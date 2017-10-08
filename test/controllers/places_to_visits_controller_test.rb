require 'test_helper'

class PlacesToVisitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @places_to_visit = places_to_visits(:one)
  end

  test "should get index" do
    get places_to_visits_url
    assert_response :success
  end

  test "should get new" do
    get new_places_to_visit_url
    assert_response :success
  end

  test "should create places_to_visit" do
    assert_difference('PlacesToVisit.count') do
      post places_to_visits_url, params: { places_to_visit: {  } }
    end

    assert_redirected_to places_to_visit_url(PlacesToVisit.last)
  end

  test "should show places_to_visit" do
    get places_to_visit_url(@places_to_visit)
    assert_response :success
  end

  test "should get edit" do
    get edit_places_to_visit_url(@places_to_visit)
    assert_response :success
  end

  test "should update places_to_visit" do
    patch places_to_visit_url(@places_to_visit), params: { places_to_visit: {  } }
    assert_redirected_to places_to_visit_url(@places_to_visit)
  end

  test "should destroy places_to_visit" do
    assert_difference('PlacesToVisit.count', -1) do
      delete places_to_visit_url(@places_to_visit)
    end

    assert_redirected_to places_to_visits_url
  end
end
