require 'test_helper'

class PlaceRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @place_rating = place_ratings(:one)
  end

  test "should get index" do
    get place_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_place_rating_url
    assert_response :success
  end

  test "should create place_rating" do
    assert_difference('PlaceRating.count') do
      post place_ratings_url, params: { place_rating: {  } }
    end

    assert_redirected_to place_rating_url(PlaceRating.last)
  end

  test "should show place_rating" do
    get place_rating_url(@place_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_place_rating_url(@place_rating)
    assert_response :success
  end

  test "should update place_rating" do
    patch place_rating_url(@place_rating), params: { place_rating: {  } }
    assert_redirected_to place_rating_url(@place_rating)
  end

  test "should destroy place_rating" do
    assert_difference('PlaceRating.count', -1) do
      delete place_rating_url(@place_rating)
    end

    assert_redirected_to place_ratings_url
  end
end
