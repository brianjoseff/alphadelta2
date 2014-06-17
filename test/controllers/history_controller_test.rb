require 'test_helper'

class HistoryControllerTest < ActionController::TestCase
  test "should get governing_documents" do
    get :governing_documents
    assert_response :success
  end

  test "should get six_principles" do
    get :six_principles
    assert_response :success
  end

  test "should get vision_statement" do
    get :vision_statement
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
