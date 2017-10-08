require 'test_helper'

class VisitorReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitor_review = visitor_reviews(:one)
  end

  test "should get index" do
    get visitor_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_visitor_review_url
    assert_response :success
  end

  test "should create visitor_review" do
    assert_difference('VisitorReview.count') do
      post visitor_reviews_url, params: { visitor_review: {  } }
    end

    assert_redirected_to visitor_review_url(VisitorReview.last)
  end

  test "should show visitor_review" do
    get visitor_review_url(@visitor_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitor_review_url(@visitor_review)
    assert_response :success
  end

  test "should update visitor_review" do
    patch visitor_review_url(@visitor_review), params: { visitor_review: {  } }
    assert_redirected_to visitor_review_url(@visitor_review)
  end

  test "should destroy visitor_review" do
    assert_difference('VisitorReview.count', -1) do
      delete visitor_review_url(@visitor_review)
    end

    assert_redirected_to visitor_reviews_url
  end
end
