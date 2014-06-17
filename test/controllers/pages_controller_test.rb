require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get photos" do
    get :photos
    assert_response :success
  end

  test "should get alumni_news" do
    get :alumni_news
    assert_response :success
  end

end
